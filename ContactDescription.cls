public class ContactDescription implements database.Batchable<sObject>
{
Public Database.Querylocator start(Database.BatchableContext bc)
{
String query = 'Select name, title, Account.name, Account.description from Contact';
Return Database.getQueryLocator(query);
}
Public void execute (Database.BatchableContext bc, List<contact> contacts)
{
if (contact.account.name != null)
{
For(contact con: contacts)

{
con.Description = con.title + ' of ' + con.account.name + ' : ' + con.account.description;
}
update contacts;
}
}
Public void finish(Database.Batchablecontext bc)
{
//Success or failure message
}
}