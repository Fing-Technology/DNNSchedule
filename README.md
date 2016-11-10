# DNNSchedule
Example DNN scheduled task Project in C#

I have been building simple DNN scheduled tasks for a while and always found them a real pain to debug.
You have to install the DLL in DNN, set up the task and then attach to IIS in Visual Studio. Once ready you hit "run now" in the DNN scheduler to fire off the task.
There is usually a long wait before your breakpoints are hit and you can step through the code.

So, I decided to set something up that could run the code at the click of a button outside of DNN. This would make debugging so much quicker and easier.
I opted for the simplest solution I could think of which was to put the work that needed to be done into a separate file and make it a static class.

The code in this class can be called from a button click in a separate web site project. So you all need to do is build and test your code and then install 
the task DLL in DNN.

For this example the idea was to truncate the Event Log which is a commonly required task. However, the event log is in a period of transition in DNN 7.x.
So the code is an outline and you can modify it to do what you want.

I am in the habit of steering clear of the DNN API for database stuff. I much prefer to use a micro ORM like [Simple.Data](http://simplefx.org/simpledata/docs/pages/Start/WhatIsSimpleData.html) 
so this example uses it to call a DNN proc called "PurgeEventLog":

    var db = Database.OpenNamedConnection("SiteSQLServer"); // create a db connection to DNN database
    db.PurgeEventLog(); // call the proc "PurgeEventLog"

Clearly you will need to add the Simple.Data DLLs to you DNN bin folder.


