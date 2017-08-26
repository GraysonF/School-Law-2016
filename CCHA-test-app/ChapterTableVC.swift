//
//  SectionTableVC.swift
//  CCHA-test-app
//
//  Created by Grayson faircloth on 8/3/16.
//  Copyright © 2016 Grayson Faircloth. All rights reserved.
//

import UIKit

class ChapterTableVC: UITableViewController, UISearchBarDelegate {
    
    var articleFiveOne : [String] = ["Article 1 - Bonds and Other Obligatiions", "IC 5-1-1 - Bonds and Other Obligations Legalized", "IC 5-1-2 - Nonreverting Appropriations", "IC 5-1-3 - Facsimile Signatures on Obligations", "IC 5-1-5 - Refunding Bonds Generally", "IC 5-1-6 - Revenue Bond Refinancing", "IC 5-1-11 - Procedures for Selling Bonds", "IC 5-1-12 - Payment of Bond Premiums", "IC 5-1-13 - Disposition of Surplus Bonds Proceeds", "IC 5-1-14 - Miscellaneous Provisions", "IC 5-1-15 - Fully Registered and Book Entry Obligations", "IC 5-1-18 - Reports Concerning Bonds and Leases of Political Subdivisions"]
    
    var articleFiveOneFive : [String] = ["Article 1.5 - Indiana Bond Bank", "IC 5-1.5-4 - Issuance of Obligations", "IC 5-1.5-8 - Loans to Qualified Entities"]
    
    var articleFiveTwo : [String] = ["Article 2 - Law Enforcement", "IC 5-2-10.1 - Indiana Safe Schools Fund", "IC 5-2-18.2 - Citizenship and Immigration Status Information and Enforcement of Federal Immigration Laws"]
    
    var articleFiveThree : [String] = ["Article 3 - Publicatiion of Notices", "IC 5-3-1 - Publication Procedures", "IC 5-3-3 - Publication of Legal Notices in Trade Journals and Magazines"]
    
    var articleFiveFour : [String] = ["Article 4 - Officers' Bonds and Oaths", "IC 5-4-1 - Filing, Recording, and Terms of Bonds and Oaths"]
    
    var articleFiveSeven : [String] = ["Article 7 - Officers' Fees and Salaries", "IC 5-7-3 - Advance Payment of Salaries Prohibited"]
    
    var articleFiveEight : [String] = ["Article 8 - Officers' Impeachment, Removal, Resignation, and Disqualification", "IC 5-8-1 - Impeachment and Removal From Office", "IC 5-8-2 - Removal From Office fro Intoxication", "IC 5-8-3 - Disqualification by Violation of Federal Law", "IC 5-8-3.5 - Notice of Resignation", "IC 5-8-4 - Resignations", "IC 5-8-6 - Notice of Death of an Officeholder"]
    
    var articleFiveNine : [String] = ["Article 9 - Leaves of Absence and Appointment Preferences for Millitary Service", "IC 5-9-4 - Leaves of Absence for Military Service"]
    
    var articleFiveTen : [String] = ["Article 10 - Public Employee Benefits", "IC 5-10-0.5 - Limitations on Public Retirement Fund Investments", "IC 5-10-1.1 - Public Employees Deferred Compensation Plans", "IC 5-10-5.5 - Excise Police and Conservation Enforcement Officers Retirement Plan", "IC 5-10-6 - Vacations and other Benefits fro Certain Public Employees", "IC 5-10-8 - Group Insurance for Public Employees", "IC 5-10-9 Deposits on Behalf of Local Employees", "IC 5-10-11 - State Employees Death Benefit"]
    
    var articleFiveTenOne : [String] = ["Article 10.1 - Social Security Coverage for Public Employees", "IC 5-10.1-2.5 - Public Employee Sick Pay Plan", "IC 5-10.1-6 - Contributions"]
    
    var articleFiveTenTwo : [String] = ["Article 10.2 - Public Retirement and Disability Benefits", "IC 5-10.2-2 - The Retirement Funds", "IC 5-10.2-3 - Creditable Services; Contributions; Withdrawals; Death Settlements", "IC 5-10.2-4 - Retirement and Disability Benefits", "IC 5-10.2-5 - Restricted Benefits", "IC 5-10.2-8 - Voluntary Supplemental Retirement Plan"]
    
    var articleFiveTenThree : [String] = ["Article 10.3 - The Public Employees' Retirement Fund", "IC 5-10.3-7 - Membership; Creditable Service; Contributions; Withdrawal", "IC 5-10.3-8 - Benefits"]

    var articleFiveTenFour : [String] = ["Article 10.4 - State Teachers' Retirement Fund", "IC 5-10.4-1 - State Teachers Retirement Fund General Provisions", "IC 5-10.4-4 - Fund Membership; Employee Contributions; Creditable Service; Pirchase of Service; Fund Withdrawal", "IC 5-10.4-5 - Benefits", "IC 5-10.4-6 - Restricted Benefits", "IC 5-10.4-7 - School Corporation Reports and Administration"]
    
    var articleFiveTenFive : [String] = ["Article 10.5 - Indiana Public Pension Modernization Act", "IC 5-10.5-1 - Definitions", "IC 5-10.5-2 - Indiana Public Retirement System", "IC 5-10.5-3 - Board of Trustees", "IC 5-10.5-4 - Board Powers and Duties", "IC 5-10.5-5 -  Investments", "IC 5-10.5-6 - Director; Reports and Administration", "IC 5-10.5-7 - Short Title and Saving Provisions"]
    
    var articleFiveTenEleven : [String] = ["Article 11 - Accounting for Public Funds", "IC 5-11-1 State Board of Accounts Created", "IC 5-11-4 - Payment of State Board of Accounts for Investigation of Public Accounts", "IC 5-11-5 - Reports of Examinations by State Board of Accounts; Recovery of Public Funds", "IC 5-11-6 - Additional Powers of State Examiner and Attorney General", "IC 5-11-9 - Certification of Accounts and Vouchers; Forms", "IC 5-11-10 - Certification of Claims; Forms", "IC 5-11-10.5 - Disposition of Warrants and Checks", "IC 5-11-13 - Executive Officers Annual Report to State Board of Accounts", "IC 5-11-20 - Retirement Plan Reporting"]
    
    var articleFiveThirteen : [String] = ["Article 13 - Investment of Public Funds", "IC 5-13-4 - Definitions", "IC 5-13-5 - General Provisions", "IC 5-13-6 - Deposit of Public Funds", "IC 5-13-7 - Local Boards of Finance", "IC 5-13-8 - Designation of Depositories", "IC 5-13-9 - Deposit and Investment Powers", "IC 5-13-10 - Funds Invesyed b ythe Treasurer of State", "IC 5-13-11 - Investment Cash Management System", "IC 5-13-14 - Miscellaneous Provisions"]
    
    var articleFiveFourteen : [String] = ["Article 14 - Public Records and Public Meetings",  "IC 5-14-1.5 - Public Meetings (Open Door Law)", "IC 5-14-3 - Access to Public Records", "IC 5-14-3.5 - Access to Financial Data for State Agencies", "IC 5-14-3.6 - Access to Financial Data for State Educational Institutions", "IC 5-14-3.7 - Access to Financial Data for Local Schools", "IC 5-14-3.8 - Access to Finanacial Data for Local Units", "IC 5-14-4 - Public Access Counselor", "IC 5-14-5 - Formal Complaint Procedure"]
    
    var articleFiveFifteen : [String] = ["Article 15 - Preservation of Public Records", "IC 5-15-5.1 State Commission on Public Records", "IC 5-15-6 - Local Public Records Commissions"]
    
    var articleFiveSixteen : [String] = ["Article 16 - Public Workds", "IC 5-16-3 - Filing Blueprints and Specifications", "IC 5-16-6 - Discrimination by Contractors and Subcontractors Prohibited", "IC 5-16-6.5 - Minority Business Certification", "IC 5-16-7.1 - Effect of Repeal of Common Construction Wage Statute", "IC 5-16-7.2 - Wage Scales for Public Works Projects", "IC 5-16-8 - Steel Procurement for Public Works", "IC 5-16-9 - Parking Facilities for Persons With Physical Disabilities", "IC 5-16-10 - Employment of Construction Managers in Public Contruction Projects", "IC 5-16-11.1 - Procurement of Services of Architects, Engineers, and Land Surveyors", "IC 5-16-12.2 - Use of Energy Efficient Technology", "IC 5-16-13 - Requirements for Contractors on Public Works Projects", "IC 5-16-14 - Determination That a Contractor fro a Public Works Project Is Not Responsible"]
    
    var articleFiveSeventeen : [String] = ["Article 17 - Public Purchases", "IC 5-17-5 - Prompt Payment"]
    
    var articleFiveTwentyTwo : [String] = ["Article 22 - Public Purchasing", "IC 5-22-1 - Application", "IC 5-22-2 - Definitions", "IC 5-22-3 - General Provisions", "IC 5-22-4 - Purchasing Organizations", "IC 5-22-5 - Specifications", "IC 5-22-6 - Purchase of Services", "IC 5-22-6.5 - Contracts for Collection Services", "IC 5-22-7 - Competitive Bidding-p1arruobdehj1nl7drj6hpg", "IC 5-22-7.5 - Online Reverse Auctions", "IC 5-22-8 - Small Purchases", "IC 5-22-9 - Request for Proposals", "IC 5-22-10 - Special Purchasing Methods", "IC 5-22-11 - Purchase From the Department of Correction", "IC 5-22-12 - Purchase of Rehabilitation Center Products", "IC 5-22-13 - Purchases From Qualified Nonprofit Agencies for Persons With Severe Disabilities", "IC 5-22-14 -Small Business Set-Aside Purchases", "IC 5-22-15 - Purchasing Preferences", "IC 5-22-16 - Qualifications and Duties of Offerors and Prospective Contractors", "IC 5-22-16.5 - Disqualification of Contractors Dealing with the Government of Iran", "IC 5-22-17 - Contracts", "IC 5-22-18 - Other Procedures Governing Purchasing", "IC 5-22-19 - Determinations", "IC 5-22-20 - Modification and Termination of Contracts", "IC 5-22-21 - Disposition of State Surplus Personal Property", "IC 5-22-22 - Disposition of Surplus Personal Property by a Governmental Body"]
    
    var articleFiveTwentyThree : [String] = ["Article 23 - Public/Private Agreements", "IC 5-23-1 - Application and Construction", "IC 5-23-2 - Definitions", "IC 5-23-3 - BOT Agreements", "IC 5-23-4 - Operating Agreements", "IC 5-23-5 - Selection of Contractor by Request for  Proposals", "IC 5-23-6 - Contract Terms and Conditions", "IC 5-23-7 - Records"]
    
    var articleFiveTwentySix : [String] = ["Article 26 - Public Safety Communications", "IC 5-26-1 - Definitions", "IC 5-26-2 - Integrated Public Safety Commission", "IC 5-26-3 - Indiana Statewide Wireless Public Safety Voice and Data Communications System", "IC 5-26-4 - Integrated Public Safety Communications Fund", "IC 5-26-5 - Communications System Infrastructure Fund"]
    
    var articleFiveThirty : [String] = [ "Article 30 - Design/Build Public Works", "IC 5-30-1 - Definitions", "IC 5-30-2 - General Provisions", "IC 5-30-3 - Design-Builder Qualifications", "IC 5-30-4 - Technical Review Committee", "IC 5-30-5 - Request for Qualifications", "IC 5-30-6 - Request for Proposals", "IC 5-30-7 -  Selection and Award", "IC 5-30-8 - Miscellaneous Provisions"]
    
    var articleTwentySeventeen : [String] = ["Article 17 - Effect of Recodification of Title 20", "IC 20-17-1 - Effect of Recodification of Title 20", "IC 20-17-2 - Effect of Recodification by the Act of the 2006 Regular Session of the General Assembly"]
    
    var articleTwentyEighteen : [String] = ["Article 18 - General Provisions", "IC 20-18-1 - Applicability", "IC 20-18-2 - Definitions", "IC 20-18-3 - Legislative Intent"]
    
    var articleTwentyNineteen : [String] = ["Article 19 - State Administration of Elementary and Secondary Education", "IC 20-19-1 - State Superintendnet of Public Instruction", "IC 20-19-2 - State Board of Education", "IC 20-19-3 - Department of Education", "IC 20-19-3.5 - School Data Reporting", "IC 20-19-5 - Childrens Social, Emotional, and Behavioral Health Plan", "IC 20-19-6 - Indiana Works Councils", "IC 20-19-6.2 -  Indiana Family Friendly School Designation"]
    
    var articleTwentyTwenty : [String] = ["Article 20 - Programs Administered by the State", "IC 20-20-1 -  Educational Service Centers", "IC 20-20-3 - Teacher Referral System", "IC 20-20-4 - Teacher of the Year", "IC 20-20-5.5 - Curricular Materials", "IC 20-20-7 - High School Diploma Program for Eligible Veterans", "IC 20-20-8 -  School Corporation Annual Performance Report", "IC 20-20-12 - Program for the Advancement of Math and Science", "IC 20-20-13 - Educational Technology Program and Grants", "IC 20-20-16 - Access to Telecommunications Service", "IC 20-20-17 - School Intervention and Career Counseling Development Program and Fund", "IC 20-20-18 - Elementary School Counselors, Social Workers, and School Psychologists Program and Fund", "IC 20-20-18.5 -  Grants for Mental Health Counselor Licenses for School Counselors", "IC 20-20-19 - School Social Workers", "IC 20-20-24 - Arts Education Program", "IC 20-20-28 - Early Childhood Programs", "IC 20-20-33 - Alternative Education Program Grants", "IC 20-20-37 -  Dropout Prevention", "IC 20-20-37.4 -  Geothermal Conversion Revolving Fund", "IC 20-20-38 - Career and Technical Education", "IC 20-20-39 - Operational Efficiency Reviews", "IC 20-20-40 - Restraint and Seclusion Commission", "IC 20-20-41 - Dual Language Pilot Program"]
    
    var articleTwentyTwentyOne : [String] = ["Article 21 - Indiana School for the Blind and Visually Impaired", "IC 20-21-1 - Definintions", "IC 20-21-2 - Indiana School for the Blind and Visually Impaired", "IC 20-21-3 - Indiana School for the Blind and Visually Impaired Board", "IC 20-21-4 -  Personnel System"]
    
    var articleTwentyTwo : [String] = ["Article 22 - Indiana School for the Deaf", "IC 20-22-1 - Definitions", "IC 20-22-2 - Indiana School for the Deaf", "IC 20-22-3 - Indiana School for the Deaf Board", "IC 20-22-4 - Personnel System"]
    
    var articleTwentyThree : [String] = ["Article 23 - Organization of School Corporations", "IC 20-23-4 - Community School Corporations", "IC 20-23-5 - Community School Corporations Territory Annexations", "IC 20-23-6 - Consolidation of School Corporations", "IC 20-23-7 -  Consolidation of County School Corporations and Metropolitan School Districts", "IC 20-23-8 - Governing Body Composition Change", "IC 20-23-9 - Annexation of a Township School Corporation", "IC 20-23-10 - Merger of School Corporations Within Counties", "IC 20-23-11 -  Joint Schools in Adjacent States", "IC 20-23-12 - Election of Governing Body Members in Gary", "IC 20-23-13 - Election of Governing Body Members in Hammond Community School Corporation", "IC 20-23-14 - Election of Governing Body Members in Lake Station", "IC 20-23-15 - Election of Governing Body Members in South Bend", "IC 20-23-16 - School Corporation Organization; Miscellaneous Provisions", "IC 20-23-17 - Election of Members of the Governing Body of the School City of Mishawaka", "IC 20-23-17.2 - Election of School Board Members in East Chicago"]
    
    var articleTwentyFour : [String] = ["Article 24 - Charter Schools", "IC 20-24-1 - Definitions", "IC 20-24-2 - Charter Schools Generally", "IC 20-24-2.1 - Indiana Charter School Board", "IC 20-24-2.2 - Monitoring and Accountability of Sponsors", "IC 20-24-2.3 - Indianapolis Charter School Board", "IC 20-24-3 - Establishment of Charter Schools", "IC 20-24-4 - The Charter", "IC 20-24-5 - Student Admissions and Enrollment", "IC 20-24-6 - Employment of Teachers and Other Personnel; Collective Bargaining", "IC 20-24-7 - Fiscal Matters", "IC 20-24-8 - Charter School Powers and Exemptions", "IC 20-24-9 - Oversight of Charter Schools; Reporting Requirements; Revocation of Charter", "IC 20-24-10 -  Student Transfers From Charter School to Public Noncharter Schools", "IC 20-24-11 - Conversion of Existing Public Schools Into Charter Schools", "IC 20-24-12 - Charter School Facilities Assistance Program", "IC 20-24-13 - Charter and Innovation Network School Grant Program"]
    
    var articleTwentyFourTwo : [String] = ["Article 24.2 - Performance Qualified School Districts", "IC 20-24.2-1 Definitions", "IC 20-24.2-2 - Establishment of Performance Qualified School Districts and High Schools", "IC 20-24.2-3 - Performance Qualified High School Waivers", "IC 20-24.2-4 -Qualified District and Qualified High School Powers and Exemptions", "IC 20-24.2-5 - Rules"]
    
    var articleTwentyFourFive : [String] = ["Article 24.5 - University Administered Schools",  "IC 20-24.5-1 - Operation of Preschools, Elementary Schools, and Secondary Schools by Certain Universities", "IC 20-24.5-2 - Laboratory Schools", "IC 20-24.5-3 - Indiana Academy for Science, Mathematics, and Humanities; Ball State University", "IC 20-24.5-4 - Indiana School for the Arts; Indiana University", "IC 20-24.5-5 - Grammar School; Vincennes University"]
    
    var articleTwentyFive : [String] = ["Article 25 - Indianapolis Public Schools", "IC 20-25-1 - Applicability", "IC 20-25-2 - Definitions", "IC 20-25-3 - Board of School Commissioners; Officers and Employees", "IC 20-25-4 - General Administrative Provisions", "IC 20-25-5 - Real Property Anenxations and Transfers; Remonstrances", "IC 20-25-6 - Determination of School City Conditions and Needs", "IC 20-25-7 - Neighborhood Schools", "IC 20-25-8 - Parental Involvement in Schools", "IC 20-25-9 - Performance Meaures for Student Achievement", "IC 20-25-10 - Board Plan for Improvement of Student Achievement", "IC 20-25-11 - Annual Performance Onjectives", "IC 20-25-12 - School Plans for Improvement", "IC 20-25-13 - Staff Performance Evaluations", "IC 20-25-14 - Summer Remediation", "IC 20-25-15 - Academic Receivership", "IC 20-25-16- Additional Powers to Modify Polices and Waive Requirements, Lease Property, and Transfer Funds"]
    
    var articleTwentySix : [String] = ["Article 26 - School Corporations General Administrative Provisions", "IC 20-26-1 - Applicability", "IC 20-26-2 - Definitions", "IC 20-26-3 - Home Ruile", "IC 20-26-4 - Organization and Operation of Governing Body", "IC 20-26-5 - General Powers and Duties", "IC 20-26-7 - Property and Eminent Domain", "IC 20-26-9 - School Breakfast and Lunch Programs", "IC 20-26-10 - Joint Programs and Personnel", "IC 20-26-11 - Legal Settlement and Transfer of Students;Transfer Tuition", "IC 20-26-12 - Curicular Material", "IC 20-26-13 - Graduation Rate Determination", "IC 20-26-14 - Interscholastic Atheltic Associations", "IC 20-26-15 - Freeway School Corporation and Freeway School Program", "IC 20-26-16 - School Corporation Police Departments", "IC 20-26-17 - School Corporation Employee Health Coverage", "IC 20-26-18 - Criminal Gamg Measures", "IC 20-26-18.2 - School Resource Officers"]
    
    var articleTwentySeven : [String] = ["Article 27 - School Transportation", "IC 20-27-1 - Applicability", "IC 20-27-2 - Definitions", "IC 20-27-3 - State School Bus Committee", "IC 20-27-4 - Purchase of School Buses", "IC 20-27-5 - Transportation Contracts", "IC 20-27-6 - Parents Supplemental transportation Contracts", "IC 20-27-7 - School Bus Inspection and Registration", "IC 20-27-8 - School Bus Drivers", "IC 20-27-9 - Use of School Buses", "IC 20-27-10 - School Bus Safety", "IC 20-27-11 - Transportation Costs", "IC 20-27-12 - Transportation of Homeless Students", "IC 20-27-13 - Termination of Transportation; Waiver"]
    
    var articleTwentyEight : [String] = ["Article 28 - School Teachers", "IC 20-28-1 - Definitions", "IC 20-28-2 - Division of Professional Standards", "IC 20-28-3 - Teacher Education and Continuing Education", "IC 20-28-4 - Transition to Teaching Program", "IC 20-28-5- Licenses", "IC 20-28-6 - Contracts", "IC 20-28-7.5 - Cancellation of Teacher Contracts", "IC 20-28-8 - Contracts With School Administrators", "IC 20-28-9 - Salary and Related Payments", "IC 20-28-10 - Conditions of Employment", "IC 20-28-11.5 - Staff Performance Evaluations", "IC 20-28-12 - Endorsement for Independent Practice School Psychologists"]
    
    var articleTwentyNine : [String] = ["Article 29 - Collective Bargaining for Teachers", "IC 20-29-1 - Findings and Intent", "IC 20-29-2 - Definitions", "IC 20-29-3 - Indiana Education Employment Relations Board", "IC 20-29-4 - Rights and Responsibilities of School Employees and Employers", "IC 20-29-5 - Units and Exclusive Representatives", "IC 20-29-6 - Collective Bargaining", "IC 20-29-7 - Unfair Practices", "IC 20-29-8 - Impasse Procedures", "IC 20-29-9 - Strikes"]
    
    var articleTwentyThirty : [String] = ["Article 30 - Curriculum", "IC 20-30-1 - Applicability", "IC 20-30-2 - Calendar", "IC 20-30-3 - Annual and Patriotic Observances", "IC 20-30-4 - Student Graduation Plan", "IC 20-30-5 - Mandatory Curriculum", "IC 20-30-7 - Summer School Pragrams", "IC 20-30-8 - Alternative Program for Certain Students", "IC 20-30-9 - Billingual and Bicultural Instruction", "IC 20-30-10 - College Preparation Curriculum", "IC 20-30-12 - Technology Preparation Curriculum", "IC 20-30-14 - Community or Volunteer Service Program", "IC 20-30-14.5 - State Certificate of Biliteracy", "IC 20-30-15 - Nonsession School Activites"]
    
    var articleTwentyThirtyOne : [String] = ["Article 31 - Accountability for Performance and Improvement", "IC 20-31-1 - Applicability", "IC 20-31-2 - Definitions", "IC 20-31-3 - Adoption of Academic Standards", "IC 20-31-4 - Performance Base Accreditation", "IC 20-31-5 - Startegic and Continuous School Improvement and Achieve,ment Plan", "IC 20-31-6 Cultural Competency in Educational Enviroments", "IC 20-31-7 - Student Educational Achievement Grants", "IC 20-31-8 - Assessing Improvemnet", "IC 20-31-9 - Consequences", "IC 20-31-9.5 - Turnaround Academies", "IC 20-31-10 - Rules", "IC 20-31-11 - Performance Based Awards", "IC 20-31-12 - School Recognition Programs"]
    
    var articleTwentyThirtyTwo : [String] = ["Article 32 - Student Standards, Assesments, and Performance", "IC 20-32-1 - Applicability", "IC 20-32-2 - Definitions", "IC 20-32-3 - Secondary Certificates of Achievement", "IC 20-32-4 - Graduation Requirements", "IC 20-32-5 - Indiana Statewide Testing for Educational Progress", "IC 20-32-7 - Local Student Diagnostic Assessment and Student Portfolios", "IC 20-32-8 - Remediation", "IC 20-32-8.5 - Reading Deficiency Remediation Plan", "IC 20-32-9 - Postsecondary and Workforce Training Program"]
    
    var articleTwentyThirtyThree : [String] = ["Article 33 - Student General Provisions", "IC 20-33-1 - Equal Educational Opportunity", "IC 20-33-2 - Compulsory School Attendance", "IC 20-33-3 - Limitations on the Employment of Students", "IC 20-33-4 - Legal Settlement and Transfer of Students", "IC 20-33-5 - Financial Assistance fro Students", "IC 20-33-7 - Parental Access to Student Records", "IC 20-33-8 - Student Discipline", "IC 20-33-8.5 - Court Assisted Resolution of Suspension and Expulsion Cases", "IC 20-33-9 - Reporting Requirements"]
    
    var articleTwentyThirtyFour : [String] = ["Article 34 - Student Health and Safety Measures", "IC 20-34-3 - Health and Safety Measures", "IC 20-34-4 - Immunizations", "IC 20-34-4.5 - Auto-Injectable Epinephrine", "IC 20-34-5 - Care of Students With Diabetes", "IC 20-34-6 - Student Safety Reporting", "IC 20-34-7 - Student Athletes; Concussions and Head Injuries", "IC 20-34-8 - Student Athletes; Sudden Cardiac Arrest"]
    
    var articleTwentyThirtyFive : [String] = ["Article 35 - Special Education", "IC 20-35-1 - Definitions", "IC 20-35-2 - Division of Special Education", "IC 20-35-3 - State Advisory Council", "IC 20-35-4 - School Corporations; Powers and Duties Regarding Children With Disabilities", "IC 20-35-5 - Special Education Cooperatives", "IC 20-35-6 - General Provisions", "IC 20-35-8 - Transfer and Transportation of Students With Disabillities", "IC 20-35-9 - Reading and Writing Instruction for Blind Students", "IC 20-35-11 - Center for Deaf and Hard of Hearing Education"]
    
    var articleTwentyThirtySix : [String] = ["Article 36 - High Ability Students", "IC 20-36-1 - Definitions", "IC 20-36-2 - Programs for High Ability Students", "IC 20-36-3 - Advanced Placement Courses", "IC 20-36-4 - Governors Scholars Academy", "IC 20-36-5 - Alternate Methods of Earning High School Academic Credit"]
    
    var articleTwentyThirtySeven : [String] = ["Article 37 - Career and Technical Education", "IC 20-37-1 - Cooperative Career and Technical Education Departments", "IC 20-37-2 - Career and Technical Education Centers, Schools, or Departments"]
    
    var articleTwentyThirtyEight : [String] = ["Article 38 - Educational Compacts", "IC 20-38-1 - Interstate Agreement of Qualifications", "IC 20-38-2 - Compact for Education", "IC 20-38-3 - Interstate Compact on Education al Opportunity for Military Children"]
    
    var articleTwentyThirtyNine : [String] = ["Article 39 - Accounting and Financial Reporting Procedures", "IC 20-39-1 - Unified Accounting System", "IC 20-39-2 - Oversight by Department of Education", "IC 20-39-3 - Financial Oversight of Township Schools", "IC 20-39-4 - Audits; Reports Related to Trust Funds"]
    
    var articleTwentyForty : [String] = ["Article 40 - Government Funds and Accounts", "IC 20-40-1 - Funds Established Outside IC 20-40", "IC 20-40-2 - General Fund", "IC 20-40-3 - Referendum Tax Levy Fund", "IC 20-40-5 - Racial Balance Fund", "IC 20-40-6 - School Transportation Fund", "IC 20-40-7 - School Bus Replacement Fund", "IC 20-40-8 - Capital Projects Fund", "IC 20-40-9 - Debt Service Fund", "IC 20-40-10 - Levy Excess Fund", "IC 20-40-11 - Repair and Replacement Fund", "IC 20-40-12 - Self Insurance Fund", "IC 20-40-14 - Special Purpose Funds Without Local Tax", "IC 20-40-15 - School Technology Fund", "IC 20-40-17 - Pilot School Corporations"]
    
    var articleTwentyFortyOne : [String] = ["Article 41 - Extracurricular Funds and Accounts", "IC 20-41-1 - Accounting for School Functions; Extracurricular Account", "IC 20-41-2 - School Lunch and Textbook Rental  Programs"]
    
     var articleTwentyFortyTwo : [String] = ["Article 42 - Fiduciary Funds and Accounts", "IC 20-42-1 - Administration of Common School Fund by County", "IC 20-42-2 - County Administration of Congressional Township School Fund", "IC 20-42-3 - Seminary Township School Fund", "IC 20-42-4 - Funding of Retirement or Severance Plan"]
    
     var articleTwentyFortyTwoFive : [String] = ["Article 42.5 - Allocation of Expenditures to Student Instruction", "IC 20-42.5-1 - Allocation of Expenditures To Student Instruction", "IC 20-42.5-2 - Authority to Allocate Expenditures to Student Instruction and Learning", "IC 20-42.5-3 - State Board Action", "IC 20-42.5-4 - Emergency Measures to Maintain Instruction and Learning Programs"]
    
    var articleTwentyFortyThree : [String] = ["Article 43 - State Tuition Support",  "IC 20-43-1 - General Provisions", "IC 20-43-2 - Maximum State Distribution", "IC 20-43-3 - General Computations; Amounts Used in State Tuition Support Calculations", "IC 20-43-4 - Determination of Pupil Enrollmetn; ADM; Adjusted ADM", "IC 20-43-5 - Determination of Complexity Index and Transition to Foundation Revenue Per ADM", "IC 20-43-6 - Calculation of Basic Tuition Support Distribution", "IC 20-43-7 - Special Education Grants", "IC 20-43-8- Career and Technical Education Grants", "IC 20-43-9 - Primetime Program", "IC 20-43-10 - Other Tuition Support Grants", "IC 20-43-13 - Complexity Grants"]
    
    var articleTwentyFortyFour : [String] = ["Article 44 - Property Tax Levies; General Provisions", "IC 20-44-1 - Taxable Property", "IC 20-44-2 - General Levy Powers", "IC 20-44-3 - Application of Levy Excess to Reduce Property Taxes"]
    
    var articleTwentyFourtyFive : [String] = ["Article 45 - General Fund Levies", "IC 20-45-7 - Supplemental County Levy; Lake County", "IC 20-45-8 - Supplemental County Levy; Dearborn County"]
    
    var articleTwentyFourtySix : [String] = ["Article 46 - Levies Other Than General Fund Levies", "IC 20-46-1 - Referendum Tax Levy", "IC 20-46-3 - Racial Balance Levy", "IC 20-46-4 - School Transportation Levy", "IC 20-46-5 - School Bus Replacement Levy", "IC 20-46-6 - Capital Projects Levy", "IC 20-46-7 - Debt Service Levy"]
    
    var articleTwentyFortySeven : [String] = ["Article 47 - Related Entities; Holding Companies; Lease Agreements", "IC 20-47-1 - Public Foundations", "IC 20-47-2 - Public Holding Companies", "IC 20-47-3 - Private Holding Companies", "IC 20-47-4 - Lease of Existing School Building", "IC 20-47-5 - Payment of Rent by Annexed School Corporation"]
    
    var articleTwentyFortyEight : [String] = ["Article 48 - Borrowing and Bonds", "IC 20-48-1 - Borrowing and Bonds", "IC 20-48-2 - Borrowing; School Towns and School Cities", "IC 20-48-3 - Borrowing; Indianapolis Public Schools", "IC 20-48-4 - Township School Building"]
    
    var articleTwentyFortyNine : [String] = ["Article 49 - State Management of Common School Funds; State Advances and Loans", "IC 20-49-1 - General Provisions", "IC 20-49-2 - Administration of Veterans Memorial School Construction Fund; School Disaster Loan Fund", "IC 20-49-3 - State Administration of Common School Fund", "IC 20-49-4 - Advancement From Common School Fund; Buildings; Technology Programs", "IC 20-49-5 - Advancement From the Common School Fund from Transfer Tuition Costs", "IC 20-49-6 - School Technology Advancement Account", "IC 20-49-9 - Charter and Innovation School Advance Program"]
    
    var articleTwentyFifty : [String] = ["Article 50 - Homeless Children and Foster Care Children", "IC 20-50-1 - School Corporation Liaison for Homeless Children", "IC 20-50-2 - Tutoring and Mentoring for Homeless Children and Foster Care Children", "IC 20-50-3 - Transporation of Students in Foster Care"]
    
    var articleTwentyFiftyOne : [String] = ["Article 51 - School Scholarships", "IC 20-51-1 - Definitions", "IC 20-51-2 - Exchange of Information; Rules", "IC 20-51-3 - Scholarship Granting Organizations; Certification; Administration of Contributions", "IC 20-51-4 - Choice Scholarship"]
    
    
    

    
    
    
    
    
    
    var arrayOfArrays = [[String]]()
    
    var selectedArticleArray: [String] = []
    
    var selectedChapter = ""
    
    var selectedContent = ""
    
    var searchShowing = false
    
    var searchBar = UISearchBar()
    
    var filteredArray = [String]()
    
    var shouldShowSearchResults = false
    
    
    @IBOutlet var tableview: UITableView!
    
    override func viewWillAppear(_ animated: Bool) {
        
        searchShowing = false
        searchBar.isHidden = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.hidesBarsOnSwipe = false
        appendArrays()
        determineCorrectArray()
        
        
        let rightSearchBarButtonItem: UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.search, target: self, action: #selector(ChapterTableVC.searchTapped))
        
        self.navigationItem.setRightBarButton(rightSearchBarButtonItem, animated: true)
        
//        self.navigationItem.rightBarButtonItem?.tintColor = UIColor.whiteColor()
//        
//        self.navigationItem.backBarButtonItem?.tintColor = UIColor.whiteColor()
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if shouldShowSearchResults {
            return filteredArray.count
        } else {
            return selectedArticleArray.count
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

    
        if shouldShowSearchResults {
            
            cell.textLabel?.text = filteredArray[indexPath.row]
            
        } else {
            cell.textLabel?.text = selectedArticleArray[indexPath.row]
        }
            cell.textLabel?.font = UIFont(name: "Georgia", size: 16.0)
    

        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if shouldShowSearchResults {
            selectedContent = filteredArray[indexPath.row]
            
        } else {
            
            selectedContent = selectedArticleArray[indexPath.row]
        }
        
        
        //print(selectedContent)
        
        performSegue(withIdentifier: "SectionToContent", sender: nil)
        
        tableview.deselectRow(at: indexPath, animated: true)
    }

    func appendArrays() {
        
        arrayOfArrays.append(articleFiveOne)
        arrayOfArrays.append(articleFiveOneFive)
        arrayOfArrays.append(articleFiveTwo)
        arrayOfArrays.append(articleFiveThree)
        arrayOfArrays.append(articleFiveFour)
        arrayOfArrays.append(articleFiveSeven)
        arrayOfArrays.append(articleFiveEight)
        arrayOfArrays.append(articleFiveNine)
        arrayOfArrays.append(articleFiveTen)
        arrayOfArrays.append(articleFiveTenOne)
        arrayOfArrays.append(articleFiveTenTwo)
        arrayOfArrays.append(articleFiveTenThree)
        arrayOfArrays.append(articleFiveTenFour)
        arrayOfArrays.append(articleFiveTenFive)
        arrayOfArrays.append(articleFiveTenEleven)
        arrayOfArrays.append(articleFiveThirteen)
        arrayOfArrays.append(articleFiveFourteen)
        arrayOfArrays.append(articleFiveFifteen)
        arrayOfArrays.append(articleFiveSixteen)
        arrayOfArrays.append(articleFiveSeventeen)
        arrayOfArrays.append(articleFiveTwentyTwo)
        arrayOfArrays.append(articleFiveTwentyThree)
        arrayOfArrays.append(articleFiveTwentySix)
        arrayOfArrays.append(articleFiveThirty)
        arrayOfArrays.append(articleTwentySeventeen)
        arrayOfArrays.append(articleTwentyEighteen)
        arrayOfArrays.append(articleTwentyNineteen)
        arrayOfArrays.append(articleTwentyTwenty)
        arrayOfArrays.append(articleTwentyTwentyOne)
        arrayOfArrays.append(articleTwentyTwo)
        arrayOfArrays.append(articleTwentyThree)
        arrayOfArrays.append(articleTwentyFour)
        arrayOfArrays.append(articleTwentyFourTwo)
        arrayOfArrays.append(articleTwentyFourFive)
        arrayOfArrays.append(articleTwentyFive)
        arrayOfArrays.append(articleTwentySix)
        arrayOfArrays.append(articleTwentySeven)
        arrayOfArrays.append(articleTwentyEight)
        arrayOfArrays.append(articleTwentyNine)
        arrayOfArrays.append(articleTwentyThirty)
        arrayOfArrays.append(articleTwentyThirtyOne)
        arrayOfArrays.append(articleTwentyThirtyTwo)
        arrayOfArrays.append(articleTwentyThirtyThree)
        arrayOfArrays.append(articleTwentyThirtyFour)
        arrayOfArrays.append(articleTwentyThirtyFive)
        arrayOfArrays.append(articleTwentyThirtySix)
        arrayOfArrays.append(articleTwentyThirtySeven)
        arrayOfArrays.append(articleTwentyThirtyEight)
        arrayOfArrays.append(articleTwentyThirtyNine)
        arrayOfArrays.append(articleTwentyForty)
        arrayOfArrays.append(articleTwentyFortyOne)
        arrayOfArrays.append(articleTwentyFortyTwo)
        arrayOfArrays.append(articleTwentyFortyTwoFive)
        arrayOfArrays.append(articleTwentyFortyThree)
        arrayOfArrays.append(articleTwentyFortyFour)
        arrayOfArrays.append(articleTwentyFourtyFive)
        arrayOfArrays.append(articleTwentyFourtySix)
        arrayOfArrays.append(articleTwentyFortySeven)
        arrayOfArrays.append(articleTwentyFortyEight)
        arrayOfArrays.append(articleTwentyFortyNine)
        arrayOfArrays.append(articleTwentyFifty)
        arrayOfArrays.append(articleTwentyFiftyOne)
        
        
        
        
    }
    
    func searchTapped(_ sender: UIButton) {
        
        print("Search tapped")
        
        if searchShowing {
            
            searchBar.isHidden = true
            self.navigationItem.backBarButtonItem?.title = "Back"
            
            searchBar.resignFirstResponder()
            
            searchShowing = false
            
        } else {
            
            createSearchBar()
            
            searchBar.isHidden = false
        }
        
    }
    
    func createSearchBar() {
        
        
        searchBar.showsCancelButton = false
        searchBar.placeholder = "Search by title"
        searchBar.delegate = self
        
        self.navigationItem.titleView = searchBar
        
        searchShowing = true
        
    }
    
    func determineCorrectArray() {
        
        for var items in arrayOfArrays {
            if items.contains(selectedChapter) {
                items.remove(at: 0)
                selectedArticleArray = items
            }
        }
        
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        shouldShowSearchResults = true
        
        
        filteredArray = selectedArticleArray.filter({ $0.contains(searchText)})
        
        //print(filteredArray)
        
        
        if searchText == "" {
            filteredArray = selectedArticleArray
        }
        
        tableview.reloadData()
        
        //Now I should probably setup a variable to hold the new text and something to filter the array
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SectionToContent" {
            if let destination = segue.destination as? TestTextViewController {
                
                
                //Might want to add an activity indicator here. We'll see how it works with larger files
                
                destination.fileName = selectedContent
                
                
               // print("Yeah boi")
                
            }
        }
    }
    

}
