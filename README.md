# My System: Disiplina – Student Discipline Records

**Developer:** Clint John Vallejera (BSIT-3E)

### The problem in my own words

The discipline office currently records student violations manually in a notebook, making it difficult to track students who repeatedly commit offenses. It also takes time to check previous records and determine the correct punishment for each violation. My system will make recording, searching, and monitoring student offenses easier while helping the discipline officer apply the school's disciplinary rules consistently.

### Roles

| Role | What they can do |
|---|---|
| Discipline Officer | Manage student records, add and update offenses, record incident reports, view students' disciplinary history, and manage recommended sanctions. |
| Adviser | View student discipline records and incident reports belonging only to their assigned advisory class. |

### Resources (my database tables)

| Resource | Fields |
|---|---|
| Users | id, name, email, password, role |
| Students | id, student_number, first_name, last_name, year_level, section, adviser_id |
| Offenses | id, offense_name, offense_level, description |
| Incident Reports | id, student_id, offense_id, reported_by, incident_date, description, sanction, status |

### Key feature

The system will automatically determine the suggested sanction based on the type of offense and the student's previous violations. It can recommend a warning, community service, or suspension depending on the offense level and repeat offenses. This calculation must be handled by PHP because users should not be able to change or bypass disciplinary rules by modifying the React frontend.

### Rules (who can do what)

- Only authenticated users can access the system, and their permissions depend on their assigned role.
- The Discipline Officer can create, view, update, and delete student records, offenses, and incident reports.
- Advisers can only view disciplinary records of students belonging to their own advisory class.
- The system must count previous offenses before recommending the appropriate sanction.
- Students must not be allowed to view other students' disciplinary records.
- All important permission checks and sanction calculations must be validated by the PHP API.
- User passwords must be securely hashed, and database queries must use prepared statements.
