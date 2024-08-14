using{ ust.reuse as reuse } from './reuse';
using { cuid, managed, temporal } from '@sap/cds/common';
namespace ust.hema;
context master{
    entity student: reuse.address{
       key id: reuse.Guid;
       firstName: String(30);
       lastName: String(30);
       age:Integer;
       class:Association to semester


    }
    entity semester{
        key id: reuse.Guid;
        name: String(30);
        Special: String(30); 
    }
}