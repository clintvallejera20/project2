# Disiplina: Student Discipline Records

**Developer:** Clint John Vallejera (BSIT-3E) · **Users:** Discipline officer, Adviser  
**Final pull request deadline:** Friday, December 4

---

## Problem statement

The LCC discipline office logs offenses in a notebook and cannot quickly tell whether a student is a first-time or
repeat offender. Sanctions differ between cases with the same history.

## General objective

To develop a discipline records system that applies the student handbook's sanctions consistently.

## Core modules (deliver all of them)

- Login for each role (Discipline officer, Adviser), with pages and API checks per role
- Students: full CRUD
- Offenses (with minor or major level): full CRUD
- Incident reports: full CRUD
- Key feature: the system suggests the sanction from the offense level and how many times the student committed it (warning, community service, suspension)
- Search or filter on the main list, with pagination once records pass 20

**Main CRUD resources (minimum):** Students, Offenses, Incident reports  
**Key feature beyond CRUD:** The system suggests the sanction from the offense level and how many times the student committed it (warning, community service, suspension)

## Who can do what

The discipline officer records incidents and sanctions. Advisers can only view records of students in their own
advisory class. Records are never visible to other students.

---

## Requirements for every IT304 system

| Area | Requirement |
| --- | --- |
| Stack | React (Vite) frontend + PHP API in `api/` + MySQL in `database.sql`, on the IT304 template |
| Login and roles | Login with hashed passwords; every PHP endpoint checks the user's role on the server |
| CRUD | Full create, read, update, delete on at least 3 resources |
| Key feature | The feature above works and is enforced in PHP, not only in React |
| Security | Prepared statements only (`?` placeholders), no passwords in the code |
| Data | `database.sql` creates all tables and sample data, and can be imported twice. Your live site is public: sample data only |
| Design | Works on a phone and a laptop |
| Workflow | Work on `dev`; every release goes through a pull request to `main` |

## How to build it: **P**roblems **R**equire **D**ata, **A**PIs, **F**rontends, **T**ests

| Step | Do this | By |
| --- | --- | --- |
| 1. Problem | List the pain points above and what your system must guarantee | Nov 11 |
| 2. Requirements | Write your roles, resources and rules (who can do what) in your README | Nov 11 |
| 3. Database | `database.sql`: one table per resource, foreign keys, sample data | Nov 18 |
| 4. API | `api/*.php`: login, roles, CRUD, the key feature | Nov 25 |
| 5. Frontend | React pages, one per task, phone-friendly | Nov 25 |
| 6. Test and deploy | Try to break each rule, build, push to `dev`, open a pull request | Dec 4 |

## How you'll be graded (100 points)

Graded on your **live site**, released from `main`, against this file. Full rubric: ask your instructor for the IT304 Final Project Rubric.

| Criterion | Points |
| --- | --- |
| Core modules: every module above works | 25 |
| Key feature: works and is enforced in PHP | 20 |
| Login and roles: hashed passwords, roles checked in PHP | 15 |
| Database: `database.sql` with tables, foreign keys, sample data | 10 |
| Security: prepared statements, no secrets in the code | 10 |
| Design: usable on a phone and a laptop | 10 |
| Workflow: steady commits, pull request by Dec 4 | 10 |

AI tools are allowed, but you must be able to explain any part of your code during the demo.
