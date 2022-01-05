public class usertriggerhandler {
    @Future
Public static void PermissionSetAssign(set<id> userids)
{
Permissionset permset = [select id, name from permissionset where name = 'Marketing_User_Permissions' Limit 1];

List<permissionsetassignment> newpermissions = new List<permissionsetassignment>();
for(Id userid : userids)
{
Permissionsetassignment opermissionsetassignment = new permissionsetassignment();
opermissionsetassignment.permissionsetid = permset.id;
opermissionsetassignment.Assigneeid = userid;
newpermissions.add(opermissionsetassignment);
}
if(newpermissions != null)
{
Insert newpermissions;
}

}


}