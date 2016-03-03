-- ****** Object: Table Trigger HR.UPDATE_JOB_HISTORY Script Date: 3/2/2016 6:39:58 PM ******
  CREATE OR REPLACE TRIGGER "UPDATE_JOB_HISTORY"
  AFTER UPDATE OF JOB_ID, DEPARTMENT_ID ON "EMPLOYEES"FOR EACH ROW
  BEGIN
  add_job_history(:old.employee_id, :old.hire_date, sysdate,
                  :old.job_id, :old.department_id);
END;
/