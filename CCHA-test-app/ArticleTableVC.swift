//
//  ArticleTableVC.swift
//  CCHA-test-app
//
//  Created by Grayson faircloth on 8/2/16.
//  Copyright © 2016 Grayson Faircloth. All rights reserved.
//

import UIKit

class ArticleTableVC: UITableViewController, UISearchBarDelegate {
    


    var titleOneArticles: [String] = ["Title 1 - General Provisions", "IC 1-1-4 - Construction of Statutes", "IC 1-1-9 - Legal Holidays", "IC 1-1-10 - Indiana Day", "IC 1-1-11 - Flag Day and Veterans Day", "IC 1-1-12.5 - Casimir Pulaski Day", "IC 1-1-13 - George Rogers Clark Day", "IC 1-1-14 - Northwest Ordinance Day", "IC 1-2-2 - State Flag", "IC 1-2-3 - Display and Distribution of State Flag"]
    
    
    var titleTwoArticles: [String] = ["Title 2 - General Assembly", "IC 2-3-3 - Reemployment  Rights of Legislators", "IC 2-5-29 - Youth Advisory Council", "IC 2-5-39 - Special Interim Study Committee on Redistricting"]
    
    
    var titleThreeArticles = ["Title 3 - Elections","IC 3-5-2 - Definitions", "IC 3-5-4 Miscellaneous Provisions", "IC 3-8-1 - Qualifications for Candidates", "IC 3-8-2 - Declaration of Candidacy for Federal, State, Legislative, or Local Office in Primary Election", "IC 3-8-2.5 - Nomination for School Board Office", "IC 3-8-6 - Nominations by Petition for Independent or Minor Political Party Candidates", "IC 3-8-9 - Statements of Economic Interests for Local and School Board Offices", "IC 3-9-1 Campaign Committees", "IC 3-9-2 - Campaign Contributions", "IC 3-9-3 - Campaign Expenses", "IC 3-9-4 - Administration by Election Division and County Election Boards", "IC 3-9-5 - Reports Required of Candidates and Committees", "IC 3-10-1 - Primary Elections in General Election Years", "IC 3-10-6 - Municipal and School District Elections in Cities, Large Towns, and Small Towns in Marion County", "IC 3-10-8 - Special Elections", "IC 3-11-2 - General Election Ballot Form", "IC 3-11-8 - Voting Procedures Generally", "IC 3-11-14 - Voting by Electronic Voting System", "IC 3-12-6 - Recount Procedures for Nomination for and Election to Local and School Board Offices", "IC 3-12-8 - Contest Procedures for Nomination for or Election to Local or School Board Offices", "IC 3-12-9 - Resolving Tie Voters", "IC 3-14-1 - Campaign Violations", "IC 3-14-2 - Vote Fraud", "IC 3-14-5 - Enforcement Provisions"]
    
    var titleFourArticles = ["Title 4 - State Offices and Administration","IC 4-6-2 - Powers and Duties", "IC 4-8.1-2 - The Treasurer of State", "IC 4-10-18 - The Counter-Cyclical Revenue and Economic Stabilization Fund", "IC 4-10-19 - Local Infrastructure Revolving Fund", "IC 4-12-12 - State Technology Advancement and Retention (STAR) Account", "IC 4-13-1.3 - State Purchasing", "IC 4-13-1.4 - Development of Recycled Material", "IC 4-13-1.7 - Federal Surplus Property", "IC 4-13-17 - Internet Purchasing Sites", "IC 4-13-19 - Department of Child Services Ombu", "IC 4-13-20 - Teacher Liability Insurance", "IC 4-21.5-1 - Definitions", "IC 4-21.5-2 - Application", "IC 4-21.5-3 - Adjudicative Proceedings", "IC 4-21.5-4 - Special Proceedings; Emergency and Other Temporary Orders", "IC 4-21.5-5 - Judicial Review", "IC 4-21.5-6 - Civil Enforcement", "IC 4-23-7.3 - Indiana GIS Mapping Standards", "IC 4-30-12 - Unlawful Purchase of Lottery Tickets", "IC 4-30-16 - Allocation of Revenues and Expenditure of Funds", "IC 4-34-1 - Definitions", "IC 4-34-2 - Indiana Technology Fund", "IC 4-34-3 - Use of Fund", "IC 4-34-4 - Reports"]
    
    var titleFiveArticles: [String] = ["Title 5 - State and Local Administration", "Article 1 - Bonds and Other Obligatiions", "Article 1.5 - Indiana Bond Bank", "Article 2 - Law Enforcement", "Article 3 - Publicatiion of Notices", "Article 4 - Officers' Bonds and Oaths", "Article 7 - Officers' Fees and Salaries", "Article 8 - Officers' Impeachment, Removal, Resignation, and Disqualification", "Article 9 - Leaves of Absence and Appointment Preferences for Millitary Service", "Article 10 - Public Employee Benefits", "Article 10.1 - Social Security Coverage for Public Employees", "Article 10.2 - Public Retirement and Disability Benefits", "Article 10.3 - The Public Employees' Retirement Fund", "Article 10.4 - State Teachers' Retirement Fund", "Article 10.5 - Indiana Public Pension Modernization Act", "Article 11 - Accounting for Public Funds", "Article 13 - Investment of Public Funds", "Article 14 - Public Records and Public Meetings", "Article 15 - Preservation of Public Records", "Article 16 - Public Workds", "Article 17 - Public Purchases", "Article 22 - Public Purchasing", "Article 23 - Public/Private Agreements", "Article 26 - Public Safety Communications", "Article 30 - Design/Build Public Works"]
    
    var titleSixArticles: [String] = ["Title 6 - Taxation",  "IC 6-1.1-1 - General Definitions and Rules of Construction", "IC 6-1.1-10 - Exemptions", "IC 6-1.1-15 - Procedures for Review and Appeal of Assessment and Correction of Errors", "IC 6-1.1-17 - Procedures for Fixing and Reviewing Budgets, Tax Rates, and Tax Levies", "IC 6-1.1-18 - Limitations on Property Tax Rates and Appropriations", "IC 6-1.1-19 - Public School Corporation Property Tax Controls", "IC 6-1.1-20 - Procedures for Issuance of Bonds and Other Evidences of Indebtedness by Political Subdivisions", "IC 6-1.1-20.3 - Distressed Political Subdivisions", "IC 6-1.1-20.6 - Credit for Excessive Property Taxes", "IC 6-1.1-21.2 - Tax Increment Replacement", "IC 6-1.1-21.3 - Rainy Day Fund Loans for Taxing Units Affeected by Transmission Manufacturer Bankruptcy", "IC 6-1.1-21.4 - Rainy Day Fund Loans for Eligible School Corporations", "IC 6-1.1-21.5 - Loans to Qualified Taxing Units", "IC 6-1.1-21.8 - Rainy Day Fund Loans to Qualified Taxing Units", "IC 6-1.1-22 - General Procedures for Property Tax Collection", "IC 6-1.1-22.5 - Provisional Property Tax Statements", "IC 6-1.1-22.6 - Resolution of Multi-Year Delay in Issuance of Tax Bills", "IC 6-2.5-5 - Exempt Transactions of Retail Merchant", "IC 6-3-2 - Imposition of Tax and Deductions", "IC 6-3.1-2 - Teacher Summer Employment Credits", "IC 6-3.1-15 - Tax Credit for Computer Equipment Donations", "IC 6-3.5-1.1 - County Adjusted Gross Income Tax", "IC 6-3.5-2 - Employment Tax", "IC 6-5.5-8 - Financial Institutions Tax Fund", "IC 6-6-5 - Motor Vehicle Excise Tax", "IC 6-6-5.5 - Commercial Vehicle Excise Tax", "IC 6-8-5 - Exemption of Proceeds and Interest on Municipal Bonds From All Taxes"]
    
    var titleSevenArticles: [String] = ["Title 7.1 - Alchohol and Tobacco", "IC 7.1-3-21 - Restrictions on Issuance of Permits", "IC 7.1-5-7 - Minors", "IC 7.1-5-12 - Prohibition on Smoking"]
    
    var titleEightArticles: [String] = ["Title 8 - Utilities and Transportation", "IC 8-2.1-25 - Inspection of Commercial Buses Used in Organizational Activities"]
    
    var titleNineArticles: [String] = ["Title 9 - Motor Vehicles", "IC 9-13-2 - Definitions", "IC 9-18-2 - General Procedures for Registering Motor Vehicles and Obtaining License Plates", "IC 9-19-13 - School Bus Design and Equipment", "IC 9-20-8 - Special Restrictions Concerning Buses and School Buses", "IC 9-21-5 - Speed Limits", "IC 9-21-8 - Vehicle Operation", "IC 9-21-12 - School Buses; Fire and Emergency Vehicles", "IC 9-21-14 - Marching Bands", "IC 9-24-2 - Individuals Prohibited from Obtaining a License or Permit", "IC 9-24-3 - Operators License", "IC 9-27-6 - Driver Education Training", "IC 9-29-5 - Fees Under IC 9-18.txt"]
    
    var titleTenArticles: [String] = ["Title 10 - Public Safety", "IC 10-13-1 - Definitions", "IC 10-13-2 - Criminal Justice Data Division", "IC 10-13-3 - Criminal History Information", "IC 10-13-5 - Indiana Clearinghouse for Information on Missing Children", "IC 10-14-3 - Emergenecy Management and Disaster Law", "IC 10-14-6.5 - Interstate Mutual Aid Agreements", "IC 10-16-7 - Training and Active Duty of National Guard; Benefits of Members", "IC 10-16-8 - Guard Reserve", "IC 10-17-4 - Leave of Absence for Military Training", "IC 10-21-1 - School Safety"]
    
    var titleElevenArticles: [String] = ["Title 11 - Corrections", "IC 11-8-2 - Organization of Department", "IC 11-8-8 - Sex Offender Registration", "IC 11-10-5 - Academic and Vocational Education"]
    
    var titleTwelveArticles: [String] = ["Title 12 - Human Services", "IC 12-7-2 - Definitions", "IC 12-15-1 - Administration", "IC 12-17-12 - School Age Child Care Project Fund", "IC 12-17.2-2 - General Powers and Duties of the Division", "IC 12-17.2-3.6 - Early Learning Advisory Committee; Early Education Matching Grant Program", "IC 12-17.2-7.2 - Early Education Grant Pilot Program", "IC 12-21-5 - Duties of Division", "IC 12-32-1 - Restrictions on Public Benefits to Illegal Aliens"]
    
    var titleThirteenArticles: [String] = ["Title 13 - Environment", "IC 13-17-6 - Regulation of Asbestos and Asbestos Contractors", "IC 13-18-3 - Powers and Duties Concerning Water Pollution Control", "IC 13-20-17.5 - Mercury and Mercury Products"]
    
    var titleFourteenArticles: [String] = ["Title 14 - Natural and Cultural Resources", "IC 14-23-8 - Youth Conservation Corps", "IC 14-23-9 - Planting Seedlings"]
    
    var titleSixteenArticles: [String] = ["Title 16 - Health", "IC 16-18-2 - Definitions", "IC 16-19-3 - Powers and Duties of State Department of Health and Executive Board", "IC 16-20-1 - Powers and Duties of Local Health Departments", "IC 16-32-3 - Rights of Blind and Other Physically Disabled Persons", "IC 16-33-3 - Silvercrest Childrens Development Center", "IC 16-33-4 - Indiana Soliders and Sailors Childrens Home", "IC 16-38-5 - Immunization Data Registry", "IC 16-39-2 - Release of Mental Health Records to Patient and Authorized Persons", "IC 16-39-4 - Provision of Mental Health Information", "IC 16-40-1 - Reporting of Persons with Disabilities", "IC 16-41-8 - Communicable Disease - Confidentiality Requirements", "IC 16-41-9 - Communicable Disease - Imposition of Restrictions on Individuals With Certain Communicable or Dangerous Communicable Diseases", "IC 16-41-11 - Communicable Disease - Training in Health Precautions for Communicable ", "IC 16-41-37.5 - Indoor Air Quality in Schools", "IC 16-47-1 - State Aggregate Prescription Drug Purchasing Program"]
    
    var titleTwentyArticles: [String] = ["Title 20 - Education", "Article 17 - Effect of Recodification of Title 20", "Article 18 - General Provisions", "Article 19 - State Administration of Elementary and Secondary Education", "Article 20 - Programs Administered by the State", "Article 21 - Indiana School for the Blind and Visually Impaired", "Article 22 - Indiana School for the Deaf", "Article 23 - Organization of School Corporations", "Article 24 - Charter Schools", "Article 24.2 - Performance Qualified School Districts", "Article 24.5 - University Administered Schools", "Article 25 - Indianapolis Public Schools", "Article 26 - School Corporations General Administrative Provisions", "Article 27 - School Transportation", "Article 28 - School Teachers", "Article 29 - Collective Bargaining for Teachers", "Article 30 - Curriculum", "Article 31 - Accountability for Performance and Improvement", "Article 32 - Student Standards, Assesments, and Performance", "Article 33 - Student General Provisions", "Article 34 - Student Health and Safety Measures", "Article 35 - Special Education", "Article 36 - High Ability Students", "Article 37 - Career and Technical Education", "Article 38 - Educational Compacts", "Article 39 - Accounting and Financial Reporting Procedures", "Article 40 - Government Funds and Accounts", "Article 41 - Extracurricular Funds and Accounts", "Article 42 - Fiduciary Funds and Accounts", "Article 42.5 - Allocation of Expenditures to Student Instruction", "Article 43 - State Tuition Support", "Article 44 - Property Tax Levies; General Provisions", "Article 45 - General Fund Levies", "Article 46 - Levies Other Than General Fund Levies", "Article 47 - Related Entities; Holding Companies; Lease Agreements", "Article 48 - Borrowing and Bonds", "Article 49 - State Management of Common School Funds; State Advances and Loans", "Article 50 - Homeless Children and Foster Care Children", "Article 51 - School Scholarships"]
    
    var titleTwentyOneArticles: [String] = ["Title 21 - Higher Education", "IC 21-12-6 - Twenty-First Century Scholars Program; Tuition Grants", "IC 21-12-10 - Mitch Daniels Early Graduation Scholarship", "IC 21-13-9 - Primary Care Shortage Area Scholarship", "IC 21-13-10 - Teacher Loan Repayment Program and Fund", "IC 21-14-11 - Restrictions on Resident Tuition", "IC 21-14-12.2 - Resident Tuition for Veterans", "IC 21-18-12 - Indiana E-Transcript Program", "IC 21-41-10 - Combat to College Program", "IC 21-41-11 - Indiana State University; Principal Institute", "IC 21-41-12 - Second Service for Veterans", "IC 21-42-2 - Elimination of Home Campus Requirements", "IC 21-43-1 - General Provisions; Definitions", "IC 21-43-1.5 - Priority Dual Credit Courses", "IC 21-43-4 - Postsecondary Enrollment Program", "IC 21-43-8 - State Education Institutions High"]
    
    var titleTwentyTwoArticles: [String] = ["Title 22 - Labor and Safety", "IC 22-2-5 - Frequency of Wage Payments", "IC 22-2-6 - Wage Deductions", "IC 22-2-9 - Wage Claims", "IC 22-2-13 - Military Family Leave", "IC 22-2-14 - Employee Breaks", "IC 22-3-4 - Workers Compensation; Administration and Procedures", "IC 22-3-7 - Workers Occupational Diseases Compensation", "IC 22-4-1 - Declaration of Public Policy", "IC 22-4-3 - Unemployment Defined", "IC 22-4-15 - Disqualification for Benfits", "IC 22-4.1-18 - Indiana High School Equivalency Diploma Program", "IC 22-4.1-20 - Adult Education", "IC 22-4.1-21 - Postsecondary Proprietary Educational Institution Accreditation", "IC 22-5-1.7 -  Public Contract for Services; Business Entities; Unauthorized Aliens", "IC 22-5-3 - Blacklisting", "IC 22-5-4 - Off Duty Use of Tobacco by Employee", "IC 22-5-7 - Protective Orders and Employment", "IC 22-8-1.1 - Indiana Occupational Safety and Health Act (IOSHA)", "IC 22-14-3 - Regulated Places of Amusement or Entertainment"]
    
    var titleTwentyFourArticles: [String] = ["Title 24 - Trade Regulation", "IC 24-1-2 - Combinations Restraining Trade"]
    
    var titleTwentyFiveArticles: [String] = ["Title 25 - Professions and Occupations", "IC 25-0.5-1 - Initial License or Certificate Under IC 25-1-1.1-4", "IC 25-0.5-2 - Permits, Licenses, Certificates of Registration, and Evidences", "IC 25-0.5-3 - Entities Under IC 25-1-2-6", "IC 25-0.5-4 - Board as Used in IC 25-1-4", "IC 25-0.5-5 - Administrative Functions Under IC 25-1-5-3", "IC 25-0.5-6 - Provider as Used in IC 25-1-5-10", "IC 25-0.5-7 - Administrative Functions Under IC 25-1-6-3", "IC 25-0.5-8 - Regulated Occupation for Purposes of IC 25-1-7", "IC 25-0.5-9 - Board as Used in IC 25-1-8", "IC 25-0.5-10 - Board as Used in IC 25-1-8-6", "IC 25-0.5-11 - Board as Used in IC 25-1-9", "IC 25-0.5-12 - Board as Used in IC 25-1-11", "IC 25-1-1.2 - Effect of Delinquency in Child Support Payments on Licensed or Registered Persons", "IC 25-5.1-3 - Certification; Examination", "IC 25-22.5-1 - Definitions and Exclusions", "IC 25-23.6-6 - Social Workers; Privileged Communications", "IC 25-31-1 - Regulation of Engineers; Creation of Board", "IC 25-35.6-1 - General Provisions"]
    
    var titleTwentySixArticles: [String] = ["Title 26 - Commercial Law", "IC 26-2-8 - Uniform Electronic Transactions Act"]
    
    var titleTwentySevenArticles: [String] = ["Title 27 - Insurance", "IC 27-1-29 - Indiana Political Subdivision Risk Management Commission"]
    
    var titleThirtyOneArticles: [String] = ["Title 31 - Family Law and Juvenile Law", "IC 31-9-2 - Definitions", "IC 31-16-12 - Enforcement of Child Support Orders", "IC 31-16-15 - Child Support Income Withholding Orders", "IC 31-25-2 - General Duties of the Department of Child Services", "IC 31-25-3 - Child Support Bureau", "IC 31-30.5-1 - Custodial Interrogations", "IC 31-30.5-2 - Restraining Juveniles in Court", "IC 31-32-3 - Guardians Ad Litem and Court Appointed Special Advocates", "IC 31-32-5 - Waiver of Rights", "IC 31-32-11 - Evidence", "IC 31-33-1 - General Provisions", "IC 31-33-3 - Community Child Protection Team", "IC 31-33-5 - Duty to Report Child Abuse or Neglect", "IC 31-33-6 - Immunity of Persons Who Report Child Abuse o", "IC 31-33-8 - Investigation of Reports of Suspected Child Abuse or Neglect", "IC 31-33-22 - Offenses; Access to Unsubstantiated False R", "IC 31-34-1 - Circumstances Under Which a Child Is a Child in Need of Services", "IC 31-34-3 - Child Taken Into Custody", "IC 31-34-7 - Info About Children in Need of Services, Investigations, & Prelim Inquiry", "IC 31-34-20 - Dispositional Decrees", "IC 31-34-21 - Review of Dispositional Decrees; Formal Review Hearings", "IC 31-36-1 - Reports of Missing Children", "IC 31-37-1 - Delinquent Children Who Commit Acts That Would Be Offenses if Committed By Adults", "IC 31-37-2 - Delinquent Children Who Commit Certain Other Acts and Who Need Care, Treatment, or Rehab", "IC 31-37-3 - Curfew Violations", "IC 31-37-4 - Taking a Child Into Custody", "IC 31-37-17 - Recommendation of care, treatment, or rehabilitation of a child; alternative reports", "IC 31-37-19 - Dispositional Decrees", "IC 31-37-20 - Review of Dispositional Decrees; Formal Review Hearings", "IC 31-39-2 - Persons Entitled to Access to Juvenile Court Records", "IC 31-39-4 - Persons Entitled to Access to Law Enforcement Records", "IC 31-39-6 - Confidentiality of School Records", "IC 31-39-8 - Expungement of Records Concerning Delinquent Child or Child in Need of Services", "IC 31-39-9 - Exchange of Information Concerning Delinquent Children"]
    
    var titleThirtyTwoArticles: [String] = ["Title 32 - Property", "IC 32-21-7 - Adverse Possession", "IC 32-24-1 - General Procedures"]
    
    var titleThirtyThreeArticles: [String] = ["Title 33 - Courts and Court Officers", "IC 33-33-53 - Monroe County", "IC 33-37-3 - General Court Costs Provisions for Civil Actions", "IC 33-42-4 - Administering Oaths and Taking Acknowledgments"]
    
    var titleThirtyFourArticles: [String] = ["Tile 34 - Civil Law and Procedure", "IC 34-6-2 - Definitions", "IC 34-11-1 - Statute of Limitation Generally", "IC 34-11-2 - Specific Statutes of Limitation", "IC 34-11-3 - Accrual of Cause of Action; Time From Which Limitation Period Runs", "IC 34-13-1 - Contract Claims Against the State", "IC 34-13-2 - Contract Claims Against Public Employees", "IC 34-13-3 - Tort Claims Against Governmental Entities and Public Employees", "IC 34-13-4 - Civil Rights Claims Against Public Employees", "IC 34-13-5 - Public Lawsuits for Testing Public Improvements of Municipal Corporation", "IC 34-13-5 - Public Lawsuits for Testing Public Improvements of Municipal Corporations", "IC 34-13-9 - Religious Freedom Restoration", "IC 34-28-4 - Remedies for Improper Dismissal From Employment", "IC 34-28-7 - Possession of Firearms and Ammunition in Locked Vehich", "IC 34-28-8 - Disclosure of Firearm or Ammunition Info as a Condition", "IC 34-30-2 - Statutes Outside IC 34 That Confer Immunity", "IC 34-30-4 - Charities; Immunity of Certain Volunteer Directors", "IC 34-30-12 - Health Care; Immunity of Persons Rendering Emergency First Aid", "IC 34-30-13 - Health Care; Immunity of Persons Providing Voluntary Health Care", "IC 34-30-14 - Health Care; Immunity of Certian Persons Who Administer Medications to Pupils at School", "IC 34-30-19 - Sports; Immunity of Certain Persons Involved in Sports or Leisure Activities", "IC 34-30-22 - Events; Immunity of Advertiser ot Sponsor", "IC 34-31-4 - Limited Liability of Parents for Damages Caused by Child", "IC 34-31-10 - Limited Liability Arising Form the public Use of School Facilities fro Physical Fitness Activities", "IC 34-31-10.2 - Undemnification; School Resource Officers", "IC 34-51-2 - Compensatory Damages; Comparative Fault", "IC 34-57-2 - Arbitration; Uniform Arbitration Act"]
    
    var titleThirtyFiveArticles: [String] = ["Title 35- Criminal Law and Procedure", "IC 35-31.5-2 - Definitions", "IC 35-37-4 - Evidence and Protection of Certain Wintesses", "IC 35-38-5 - Expungement of Arrest Records", "IC 35-38-9 - Sealing and Expunging Conviction Records", "IC 35-42-1 - Offenses Against the Person", "IC 35-42-2 - Battery and Related Offenses", "IC 35-42-4 -  Sex Crimes", "IC 35-43-1 - Arson, Mischeif, and Tampering", "IC 35-43-2 - Burglary and Tresspass", "IC 35-44.1-1 - General Public Administration", "IC 35-44.1-3 - Detention", "IC 35-44.2-1 - Interference with a State Government", "IC 35-44.2-2 Purchasing Offenses", "IC 35-45-2 -  Intimidation and Other Offenses Relating to Communications", "IC 35-45-4 -  Indecent Acts and Prostitution", "IC 35-45-16 - Malicious Mischief", "IC 35-46-1 - Offenses Against the Family", "IC 35-46-2 - Offenses Relating to Civil Rights", "IC 35-47-1 - Definitions", "IC 35-47-2 - Regulation of Handguns", "IC 35-47-5 - Prohibited Instruments of Violence", "IC 35-47-8 Regulation of Electronic Stun Weapons, Tasers, and Stun Guns", "IC 35-47-9 - Possession of Firearms on School Property and School Buses", "IC 35-47-10 - Children and Firearms", "IC 35-47-11.1 - Local Regulation of Firearms, Ammunition, and Firearm Accessories", "IC 35-47.5-2 - Definitions", "IC 35-48-4 - Offenses Relating to controlled Substances", "IC 35-50-2 - Death Sentence and Sentences for Felonies and Habitual Offenders", "IC 35-50-5 - Additional Penalties", "IC 35-50-8 - Primary or Secondary School Student Delinquency and Criminal Conviction Information"]
    
    var titleThirtySixArticles: [String] = ["Title 36 - Local Government", "IC 36-1-1 - Legislative Intent", "IC 36-1-1.5 - Transfer of Municipal Territory to an Adjacent Township", "IC 36-1-2 - Definitions of General Applicability", "IC 36-1-3 - Home Rule", "IC 36-1-3.5 - Transfer of Jurisdiction From General Assembly to Local Legislative Authorities", "IC 36-1-4 - General Corporate Powers", "IC 36-1-5 - Codification of Ordinances", "IC 36-1-6 - Enforcement of Ordinance", "IC 36-1-7 - Interlocal Cooperation", "IC 36-1-8 - Miscellaneous Fiscal and Administrative Provisions", "IC 36-1-9.5 - Qualifications of Bidders for Certain Contracts", "IC 36-1-10 - Leasing and Lease-Purchasing Structures", "IC 36-1-10.5 - Purchase of Land or Structures", "IC 36-1-11 - Disposal of Real or Personal Property", "IC 36-1-12 - Public Work Projects", "IC 36-1-12.5 - Guaranteed Savings Contracts; Energy Efficiency Programs Used by School Corporations", "IC 36-1-12.7 - Use of Energy Efficient Technology", "IC 36-1-13 - Cost Saving Incentive Programs", "IC 36-1-14 - Donations", "IC 36-1-14.2 - Insurance for Charitable Health Care Services", "IC 36-1-15 - Debt Limitation", "IC 36-1-16 - Displays on Public Property", "IC 36-1-17 - Defense Expenses for Unit and Municipal Corporation Officers and Employees", "IC 36-1-18 - Donations to a State University From a Political Subdivision", "IC 36-1-19 - Knox County Tax Levy for Vincennes University", "IC 36-1-20 - Regulation of Residential Leases", "IC 36-1-21 - Contracting With a Unit", "IC 36-1-22 - Regulation of Builders or Remodelers", "IC 36-1-23 - Fiscal Body Members Serving as Volunteer Firefighters; Abstention From Voting", "IC 36-1.5-1 - General Provisions", "IC 36-1.5-2  Definitions", "IC 36-1.5-3  Adjustment of Maximum Permissible Levies, Tax Rates, and Budgets", "IC 36-1.5-4  Reorganization by Referendum", "IC 36-1.5-5  Cooperative Agreements and Transfers of Responsibilities", "IC 36-2-17 - County Records", "IC 36-4-8- Micellaneous City Fiscal and Administrative Provisions", "IC 36-9-4 - Urban Mass Transportation Systems; Public Transportation Corporations", "IC 36-9-41 - Financing of Public Work Projects by Political Subdivisions", "IC 36-9-42.2 - Federal Fund exchange Program", "IC 36-10-1 - Definitions", "IC 36-10-3 - General Park and Recreation Law", "IC 36-10-12 - Childrens Museum in Marion County", "IC 36-10-13 - Cultural Institutions", "IC 36-10-14 - Public Playgrounds Maintained by School; Third Class Cities", "IC 36-12-1 - Definitions and General Provisions", "IC 36-12-2 - Class 1 Public Libraries; Organization and Board Members", "IC 36-12-7 - Class 2 Public Libraries", "IC 36-12-15 -Free Public USe of School Libraries"]
    
    var titleThirtyFive: [String] = ["Title 35 - Board of Trustees of the Indiana Public Retirement System", "35 IAC 14 - Indiana State Teachers' Retirement Fund", "35 IAC 15 - Indiana State Teacher's Retirement Fund Model Plan Amendment", "35 IAC 16 - Indiana State Teachers' Retirement Fund Contributions and Benefits", "35 IAC 17 - Annual Compensation Limits", "35 IAC 18 - Rollovers, Service Purchases, and Enhanced Retirement Savings Opportunities", "35 IAC 19 - Indiana State Teachers' Retirement Fund Additional Contributions", "35 IAC 20 - Public Employees' Retirement Fund Separate Employer Accounts Procedure", "35 IAC 22 - Internal Revenue Code Section 415"]
    
    var titleFifty: [String] = ["Title 50 - Department of Local Government Finance", "50 IAC 9 - Capital Projects Fund", "50 IAC 16 - Amended Personal Property Returns"]

    
    var titleSixtyTwo: [String] = ["Title 62 - Office of the Public Access Counselour", "62 IAC 1 - Formal Complaints"]
    
    var titleOneFourty: [String] = ["Title 140 - Bureau of Motor Vehicles", "140 IAC 7 - Driver's License Division"]

    
    var titleThreeFifty: [String] = ["Title 357 - Indiana Pesticide Review Board", "350 IAC 1 - Definition; Use of Pesticides"]
    
    var titleFourTen: [String] = ["Title 410 - Indiana State Department of Health", "410 IAC 1 - Communicable Disease Control", "410 IAC 32 - Lead-Based Paint Program", "410 IAC 33 - Indoor Air Quality"]
    
    var titleFiveEleven: [String] = ["Title 511 - Indiana State Board of Education", "511 IAC 1 - Administration; Information Collection Processing; School Finance; General Provisions", "511 IAC 3 - Reorganization of School Corporations", "511 IAC 4 - Pupil Personnel Services; Student Health Testing; Food and Nutrition Programs; Extended Services", "511 IAC 5 - Achievement Tests", "511 IAC 6 - Driver Education; Graduation Requirements; Nonstandard Programs; High Ability Students; Postsecondary Enrollment", "511 IAC 6.1 - School Accreditation", "511 IAC 6.2 - School Performance and Improvement; Accountability", "511 IAC 7 - Special Education", "511 IAC 8 - Vocational Education", "511 IAC 10 - Teacher Training and Licensing Requirements for Education Begun After Academic Year 1977-78", "511 IAC 10.1 - Teacher Training and Licensing", "511 IAC 11 - Adult Education", "511 IAC 12 - Summer School Programs", "511 IAC 13 - Accreditation of Teacher Preparation Programs", "511 IAC 14 - Initial Practitioner and Practitioner Licenses", "511 IAC 15 - School Setting and License Content Areas", "511 IAC 16 - Issuance and Revocation of Various Licenses and Permits", "511 IAC 17 - Workplace Specialist Licenses", "511 IAC 18 - Educational Interpreter Permit", "511 IAC 19 - Endorsement of School Psychologists As Independent Practice School Psychologists"]
    
    var titleFiveTwelve: [String] = ["Title 512 - Department of Education", "512 IAC 1 - Threshold of Student Absences for Reporting Purposes to Local Health Departments", "512 IAC 2 - Virtual Charter Schools", "512 IAC 3 - School Scholarship Program", "512 IAC 4 - Choice Scholarship Program", "512 IAC 5 - Family Friendly Schools Program"]

    
    var titleFiveThirteen: [String] = ["Title 513 - Commission on Seclusion and Restraint in Schools", "513 IAC 1 - Seclusion and Restraint in Schools"]

    
    var titleFiveFifteen: [String] = ["Title 515 - Advisory Board of the Division of Professional Standards", "515 IAC 1 - Teacher Training and Licensing, Beginning Residency and License Renewal", "515 IAC 3 - Performance-Based Process for Accreditation of Teacher Preparation Programs", "515 IAC 4 - Professional Educator License Teachers", "515 IAC 5 - Substitute Teachers Permit", "515 IAC 6 - Educational Interpreter Permit", "515 IAC 8 - Initial Practitioner and Other Licenses", "515 IAC 9 - Issuance and Revocation of Various Licenses and Permits", "515 IAC 10 - Workplace Specialist License Requirements", "515 IAC 12 - Accomplished Practitioner License"]

    var titleFiveSixty: [String] = ["Title 560 - Indiana Employment Relations Board", "560 IAC 2 - General Provisions"]
    
    var titleFiveSeventyFive: [String] = ["Title 575 - State School Bus Committee", "575 IAC 1 - Minimum Specifications for School Buses"]
    
    var titleNineTen: [String] = ["Title 910 - Civil Rights Commission", "910 IAC 1 - Practice and Procedure Before the Commission", "910 IAC 3 - Entitled Employment Discrimination Against Disabled Persons"]
    
    
    
    var arrayOfArrays = [[String]]()
    
    
    
    var articleSelectedCategory = ""
    var selectedArticleArray: [String] = []
    var currentSelectedChapter = ""
    
    var searchBar = UISearchBar()
    
    var searchShowing = false
    
    var filteredArray = [String]()
    
    var shouldShowSearchResults = false
    
    
    @IBOutlet var tableview: UITableView!
    
    override func viewWillAppear(_ animated: Bool) {
        
        searchBar.isHidden = true
        
        searchShowing = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.hidesBarsOnSwipe = false
        appendArrays()
        
        determineCorrectArray()
        
        
        let rightSearchBarButtonItem: UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.search, target: self, action: #selector(ArticleTableVC.searchTapped))
        
        self.navigationItem.setRightBarButton(rightSearchBarButtonItem, animated: true)
        
        
        
    }
    
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
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
        cell.textLabel?.font = UIFont.init(name: "Georgia", size: 14.0)
        
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        if shouldShowSearchResults {
            currentSelectedChapter = filteredArray[indexPath.row]
            
        } else {
            
            currentSelectedChapter = selectedArticleArray[indexPath.row]
        }
        
        
        
        print(currentSelectedChapter)
    
        
        
        
        //Ok so I need to fix this. Edit - GOT IT :)
        
        
        
        if titleFiveArticles.contains(currentSelectedChapter) || titleTwentyArticles.contains(currentSelectedChapter) {
            
            
            print("Yes")
            performSegue(withIdentifier: "ThirdSegue", sender: nil)
            
        }
        
        else {
            
            performSegue(withIdentifier: "ArticleToContent", sender: nil)
        }
        
        
        
        
        
        tableview.deselectRow(at: indexPath, animated: true)
        
        
    }
    
    func determineCorrectArray() {
        
        for var items in arrayOfArrays {
            if items.contains(articleSelectedCategory) {
                items.remove(at: 0)
                selectedArticleArray = items
                
            }
        }
    }
    
    func appendArrays() {
        arrayOfArrays.append(titleOneArticles)
        arrayOfArrays.append(titleTwoArticles)
        arrayOfArrays.append(titleThreeArticles)
        arrayOfArrays.append(titleFourArticles)
        arrayOfArrays.append(titleFiveArticles)
        arrayOfArrays.append(titleSixArticles)
        arrayOfArrays.append(titleSevenArticles)
        arrayOfArrays.append(titleEightArticles)
        arrayOfArrays.append(titleNineArticles)
        arrayOfArrays.append(titleTenArticles)
        arrayOfArrays.append(titleElevenArticles)
        arrayOfArrays.append(titleTwelveArticles)
        arrayOfArrays.append(titleThirteenArticles)
        arrayOfArrays.append(titleFourteenArticles)
        arrayOfArrays.append(titleSixteenArticles)
        arrayOfArrays.append(titleTwentyArticles)
        arrayOfArrays.append(titleTwentyOneArticles)
        arrayOfArrays.append(titleTwentyTwoArticles)
        arrayOfArrays.append(titleTwentyFourArticles)
        arrayOfArrays.append(titleTwentyFiveArticles)
        arrayOfArrays.append(titleTwentySixArticles)
        arrayOfArrays.append(titleTwentySevenArticles)
        arrayOfArrays.append(titleThirtyOneArticles)
        arrayOfArrays.append(titleThirtyTwoArticles)
        arrayOfArrays.append(titleThirtyThreeArticles)
        arrayOfArrays.append(titleThirtyFourArticles)
        arrayOfArrays.append(titleThirtyFiveArticles)
        arrayOfArrays.append(titleThirtySixArticles)
        arrayOfArrays.append(titleThirtyFive)
        arrayOfArrays.append(titleFifty)
        arrayOfArrays.append(titleSixtyTwo)
        arrayOfArrays.append(titleOneFourty)
        arrayOfArrays.append(titleThreeFifty)
        arrayOfArrays.append(titleFourTen)
        arrayOfArrays.append(titleFiveEleven)
        arrayOfArrays.append(titleFiveTwelve)
        arrayOfArrays.append(titleFiveThirteen)
        arrayOfArrays.append(titleFiveFifteen)
        arrayOfArrays.append(titleFiveSixty)
        arrayOfArrays.append(titleFiveSeventyFive)
        arrayOfArrays.append(titleNineTen)
        
        
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
        if segue.identifier == "ThirdSegue" {
            if let destination = segue.destination as? ChapterTableVC {
                
                
                destination.selectedChapter = currentSelectedChapter
                
            }
            
            
        }
        
        if segue.identifier == "ArticleToContent" {
            if let destination = segue.destination as? TestTextViewController {
                
                destination.fileName = currentSelectedChapter
            }
        }
        
        
    }
    
    
    
    
}
