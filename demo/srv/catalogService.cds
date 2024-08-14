//using { anubhav.db.master, anubhav.db.transaction } from '../db/dataModel';
using { ust.hema.master } from '../db/table1';
 
 
service CatalogService @(path: 'CatalogService') {
    entity student as projection on master.student;
    entity sem as projection on master.semester;
 
}