Introducing Sketch
====================

Sketch allows you to create reuseable, inheritable visual 
elements which can then be rendered on the web. 


Examples
-------

_basic syntax_

      class Smile < Sketch::Base
        
_html5's data attribute_

  For svg elements and sketches, you can add data which can then be
  retrieved via javascript.

      Circle.new(:klass => 'data-point', 
                 :data => {:country_name => 'USA', 
                           :gdp => '13.1 Trillion'})

  will produce this HTML... note then underscores become dashes. 
  This is because data-country_name freaks me out.

      <circle class="data-point" 
                 data-country-name="USA" 
                 data-gdp="13.1 Trillion" />

  The you can retrieve the data using jQuery, like this:

      $('.data-point').click(function()
      { 
        country_name = $(this).data('country-name');
        gdp = $(this).data('gdp');
        alert( country_name + ' has a gdp of ' + gdp ); 
      });

