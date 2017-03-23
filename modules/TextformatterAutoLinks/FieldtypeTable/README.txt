ProcessWire ProFields: Table Fieldtype & Inputfield
===================================================

This is a commercially supported module, please do not distribute. 


WHAT IT DOES
------------

This Fieldtype is the first of its kind in that it lets you literally define
your own Fieldtype. Think of it kind of like a lean and mean repeater field, 
with no extra overhead. You define the fields (and types) that you want use 
for one or more columns in a table. Behind the scenes, this Fieldtype creates 
a custom database table for storage. Each column in the database table translates
to an HTML table column of inputs present in your page editor. This is ideal
for things like rate tables, multi-column lists, inventories and more. 

Supported inputs include text, dates, times, selects, checkboxes, radios, emails,
URLs and more. Because these inputs translate directly to database columns, they are
distinct other Inputfields you may see in ProcessWire. In the admin page editor, 
the table of inputs is sortable and an unlimited number of rows may be added. 


USAGE EXAMPLE
-------------

Lets say that we're building a website for an architecture firm. Each of the 
projects in their portfolio needs a section that outlines what awards that project 
received.  We want to maintain the following pieces of information for each award: 

  - Award title
  - Award date
  - Category: Architecture, Interior Design, or Engineering
  - Award URL for more info (if available)

The Table Fieldtype/Inputfield enables us to create and manage this easily, all 
from just one field, with no need to create new templates or pages. Continue 
reading below to see how we go about implementing this. 


HOW TO INSTALL
--------------

1. Copy all the files in this directory to /site/modules/FieldtypeTable/ 

2. In your admin, go to Modules > Check for new modules. 

3. Click the "Install" button next to FieldtypeTable. 

4. If running a version of ProcessWire before 2.5, do the following: 

   Replace /wire/modules/Inputfield/InputfieldDatetime/InputfieldDatetime.js
   with the InputfieldDatetime.js file included in this module. This enables you
   to use a date or date/time picker without error. 


HOW TO CREATE A TABLE FIELD
---------------------------

1. In your admin, go to Setup > Fields > Add New. 

2. Enter a field name (i.e. "awards")  and label, and select "Table" for the 
   "Type". Save.

3. Click to the "Details" tab. This is where you will define the columns that 
   will appear in your table. We will continue the usage example above and
   specify "4" for the Number of Columns field (to correspond with title, date,
   category and URL, as mentioned above). Save. 

4. Under "Column Definitions", click to open each column definition and specify
   the following: 

   Column 1 Name:	title
   Column 1 Label:	Award Title
   Column 1 Type:	Text
   Column 1 Width:	25 

   Column 2 Name:	date
   Column 2 Label:	Date Awarded
   Column 2 Type:	Date
   Column 2 Width:	25 
   
   Column 3 Name:	category
   Column 3 Label:	Category
   Column 3 Type:	Select
   Column 3 Width:	25 
   Column 3 Options:	Architecture, Interior Design, Engineering

   Column 4 Name:	url
   Column 4 Label:	Award URL
   Column 4 Type:	URL
   Column 4 Width: 	25

5. Save your field, and now go to edit the template you want to add this field
   on (Setup > Templates). In our usage example, we would edit the 
   "portfolio_project" template. Add the field you just created and Save. 

6. Now go and edit or create a page using that field to see the results. Likely
   the first thing you will want to do is click "Add Row" in your new field. 


HOW TO ACCESS YOUR FIELD FROM THE API
-------------------------------------

Your new Table field is represented on your page as a WireArray object. Each item
in the WireArray represents a row in the table. You can access the property of 
any row directly by field name. Depending on the type you selected for your column,
the resulting value will either be a string, integer, float or array. 

The value of multi-choice fields (like checkboxes) is always an array. The array 
will contain the values of selected items. The value of a single checkbox field 
will always be either 0 or 1, with 1 representing the checked state. 

The value of your Table field itself (i.e. $page->awards) is of a TableRows object. 
It is a WireArray and benefits from all the methods of a WireArray (see 
cheatsheet.processwire.com). It also adds these additional table-specific methods
you may find helpful (presenting them in our "awards" example context):

    // Return an array of information for every column. 
    $page->awards->getColumns(); 
    $page->awards->columns; // alternate syntax

    // Return an array of information for the given column number or name. 
    $page->awards->getColumn($n); 

    // Return an array of all column labels, indexed by column name. 
    $page->awards->getLabels();
    $page->awards->labels; // alternate syntax

    // Return a string containing the label for the given column number or name.
    $page->awards->getLabel($n); 

    // Return a rendered HTML table. 
    $page->awards->render(); 
    $page->awards->render($options); 
 
Continuing the usage example from above, we could output our list of awards 
like this: 

    foreach($page->awards as $award) {
      echo "<h3>$award->title</h3><ul>";
      if($award->date) echo "<li>Date Awarded: $award->date</li>";
      if($award->category) echo "<li>Category: $award->category</li>";
      if($award->url) echo "<li>Details: $award->url</li>";
    }

Lets say that we want to use the same labels we specified with the field, rather
then typing them in manually: 

    $labels = $page->awards->labels; // retrieve all column labels
    foreach($page->awards as $award) {
      echo "<h3>$award->title</h3><ul>";
      if($award->date) echo "<li>$labels[date]: $award->date</li>";
      if($award->category) echo "<li>$labels[category]: $award->category</li>";
      if($award->url) echo "<li>$labels[url]: $award->url</li>";
    }

Now lets bring the context back to a table: 

   <table>
     <thead>
       <tr>
         <th>Title</th>
         <th>Date</th>
         <th>Category</th>
         <th>Details</th>
       </tr>
     </thead>
     <tbody>
       <?php 
       foreach($page->awards as $award) {
         echo "<tr>";
         echo "<td>$award->title</td>";
         echo "<td>$award->date</td>";
         echo "<td>$award->category</td>";
         echo "<td>$award->url</td>";
         echo "</tr>";
       }
       ?>
     </tbody>
   </table>

If we wanted to, we could build the above table more programmatically like this:

   <table>
     <thead>
       <tr>
         <?php foreach($page->awards->labels as $label) echo "<th>$label</th>"; ?>
       </tr>
     </thead>
     <tbody>
       <?php 
       foreach($page->awards as $award) {
         echo "<tr>";
         foreach($award as $name => $value) echo "<td>$value</td>";
         echo "</tr>";
       }
       ?>
     </tbody>
   </table>

But we can get even simpler than that. As a bonus, FieldtypeTable comes with it's 
own rendering capability, which will output a table similar to the above with 
just one line of code...

   echo $page->awards->render();

...however you will likely want to render your own tables for the most flexibility.
But if you want to use this built-in render method, you have a few $options you can
provide to the method, i.e. $page->awards->render($options). The $options is an array
that can contain any one or more of the following:

    tableClass (string)
    Class name for table (default=ft-table)

    columnClass (string) 
    Class name for each column, col name will be appended: (default=ft-table-col)

    useWidth (boolean)
    Indicates whether to use width attributes in columns (default=true)

     
HOW TO SET VALUES TO YOUR TABLE FIELD 
-------------------------------------

Modifying the first row: 

    $page->of(false); // turn off output formatting, if necessary
    $award = $page->awards->first();
    $award->title = "Most Sustainable Building";
    $award->date = "2014-05-01";
    $page->save('awards'); 

Adding a new row: 

    $page->of(false); // turn off output formatting, if necessary
    $award = $page->awards->makeBlankItem(); 
    $award->title = "Tallest Building";
    $award->date = "2014-05-01";
    $award->category = "Engineering";
    $award->url = "http://di.net/tallest/building/award/";
    $page->awards->add($award); 
    $page->save('awards'); 

Deleting the last row: 

    $page->of(false);
    $award = $page->awards->last();
    $page->awards->remove($award); 
    $page->save('awards'); 

For more information about how to maninpulate WireArray objects, be sure to
see http://cheatsheet.processwire.com


TABLE FIELDS AND $pages->find()
-------------------------------

Because each column in your table also represents a column in a database table
you can search any field by specifying the field name and column name, like this:

    $engineeringAwards = $pages->find("awards.category=Engineering"); 


SUPPORT AND UPGRADES
--------------------

Please see the ProFields support board at http://processwire.com/talk/. If you
have purchased ProFields and don't have access to the support board, please 
send a PM to Ryan in the forum or email ryan@processwire.com. 




