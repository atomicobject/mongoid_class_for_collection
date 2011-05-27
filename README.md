Description
===========

The responsible way to work with migrations in mongoid.

Synopsis
========

TODO

### How do I use it?

def self.up
  book_model = mongoid_class_for_collection :books do
    # The same as Book.all
    books = all
  end

  # or save the class for use just like your real model
  puts book_model.first.name
  end
end

Authors
=======

* Shawn Anderson (shawn.anderson@atomicobject.com)
* Sivabudh Umpudh (siva@atomicobject.com)
* © 2011 [Atomic Object](http://www.atomicobject.com/)
* More Atomic Object [open source](http://www.atomicobject.com/pages/Software+Commons) projects
