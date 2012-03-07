# This is a hacked-together version of the gem 'bootstrap-rails', with the generators from 'twitter-bootstrap-rails', has also replaced the Glyphicons icons with [Font Awesome](http://fortawesome.github.com/Font-Awesome/), since svg icons are resizable and colorable and such. There are also some custom scss helpers in a folder called 'custom_partials', which are just a byproduct of trying not to hate css. Feel free to muck around with this as you please. 

As specified below, the license is being included. 
Feel free to fork and mess around with this.
(uses bootstrap v2)



## License
Copyright (c) 2011 AnjLab

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

## License
Copyright (c) 2011 Seyhun Akyürek

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

## Installing Gem

Include Bootstrap in Gemfile;

    gem "bootstrapped-rails"

You can run bundle from command line

    bundle install


## Installing to App (using Generators)

You can run following generators to get started with Twitter Bootstrap quickly.


Install (requires directives to Asset pipeline.)


Usage:


    rails g bootstrapped:install


Layout (generates Twitter Bootstrap compatible layout) - (Haml and Slim supported)


Usage:


    rails g bootstrapped:layout [LAYOUT_NAME] [*ﬁxed or ﬂuid]


Example:


    rails g bootstrapped:layout application fixed


Themed (generates Twitter Bootstrap compatible scaffold views.) 


Usage:


    rails g bootstrapped:themed [RESOURCE_NAME]


Example:


    rails g scaffold post title:string description:text
    rake db:migrate
    rails g bootstrapped:themed posts

## Custom Modules
Can be imported with the following import commands at the top of your scss file. 

## Colors

	@import "custom_partials/variables.scss";

## Gradients
	
	@import "custom_partials/gradients.scss";

	helpful gradient mixins for buttons or backgrounds or whatever;
	@mixin back_gradient
		takes two parameters, each a color, and will give you a gradient from top to bottom
	@mixin percentage_gradient (i love this one)
		takes two parameters, the first is a color, the second is a percentage and will create a gradient from your specified color to a color darkened by the percentage specified (again on the bottom) 

## todo write something here
@import "custom_partials/transition.scss";
@import "custom_partials/rounded.scss";
@import "custom_partials/fonts.scss";
@import "custom_partials/status.scss";
@import 'custom_partials/arrow.scss';
@import "custom_partials/buttons.scss";
@import "custom_partials/misc.scss";
@import "custom_partials/test_colors.scss";