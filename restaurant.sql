
                                                      --[ START OF SCRIPT ]--



-----------------------------------------------❬ GENERAL INFORMATION ABOUT THE SCRIPT ❭---------------------------------------

/*
 *
 *                                                 File name: restaurant.sql
 *
 *                                              Project name: DATABASE "RESTAURANT"
 *
 *                                                   Version: v.1.0
 *
 *                                              Release date: 03.11.2022
 *
 *                                                    Author: Yaroslav Kozlov
 *                                                    E-mail: kozlov_yv@mail.ru
 *                                                    GitHub: https://github.com/yaro4luck
 *
 *                                                    © 2022 Yaroslav Kozlov
 *
 *
 *                                                             * * *
 *
 *
 *                                    This script is made to be run in the following environment:
 *
 *                                          Operating System: Ubuntu Server 22.04 (Linux)
 *
 *                                                      RDBS: PostgreSQL 14.05
 *
 *                                                 CLI shell: psql (PostgreSQL)
 *
 *                                                SSH Client: Xshell 7
 *
 *                                 Command to run the script: \i restaurant.sql;
 *
 *
 *                                                             * * *
 *
 *
 *            - This script creates database "RESTAURANT" at PostgreSQL server over Ubuntu Server operating system;
 *
 *
 *
 *                       - Beneath hereby are the following pieces of information about this script:
 *
 *
 *
 *                                                  1. Structure of the Script
 *
 *                                                  2. Object Domain
 *
 *                                                  3. Root Elements
 *
 *                                                  4. Tables
 *
 *                                                  5. Views
 *
 *                                                  6. Indexes
 *
 *                                                  7. Roles
 *
 *                                                  8. Procedures and Functions
 *
 *                                                  9. Triggers
 *
 *
 *
 *
 *                                                             * * *
 *
 *
 *
 *
 *                                          1. S T R U C T U R E   O F   T H E   S C R I P T
 *
 *
 *
 *                ┌──────────────────────────────────────[ START OF SCRIPT ]───────────────────────────────────────────┐
 *                │                                                                                                    │
 *                │                                                                                                    │
 *                │       LANGUAGE                         PART OF SCRIPT                          DESCRIPTION         │
 *                │                                                                                                    │
 *                │                       ┌──────────────────────────────────────────────┐                             │
 *                │                       │                                              │                             │
 *                │                       │      General Iformation about the Script     │                             │
 *                │       English         │              and Its Structure               │     General Information     │
 *                │                       │                                              │      about the Script       │
 *                │                       │        (you are now reading this part)       │                             │
 *                │                       │                                              │                             │
 *                │                       └──────────────────────────────────────────────┘                             │
 *                │                                                                                                    │
 *                │                                                                                                    │
 *                │----------------------------------[ START OF INSTALLATION ]-----------------------------------------│
 *                │                                                                                                    │
 *                │                                                                                                    │
 *                │                       ┌──────────────────────────────────────────────┐                             │
 *                │                       │                                              │                             │
 *                │        PL/pgSQL       │      Deleting Old Version of Database        │                             │
 *                │                       │         and Creating New Database            │    Creating Root Elements   │
 *                │          psql         │     and New Schema for All Its Objects       │       of the Database       │
 *                │                       │                                              │                             │
 *                │                       └──────────────────────────────────────────────┘                             │
 *                │                                                                                                    │
 *                │                                                                                                    │
 *                │----------------------------------------------------------------------------------------------------│
 *                │                                                                                                    │
 *                │                                                                                                    │
 *                │                     ┌──────────────────────────────────────────────────┐                           │
 *                │                     │ ┌──────────────────────────────────────────────┐ │                           │
 *                │                     │ │                                              │ │                           │
 *                │                     │ │                                              │ │                           │
 *                │                     │ │                Creating Tables               │ │                           │
 *                │                     │ │                                              │ │                           │
 *                │                     │ │                                              │ │                           │
 *                │                     │ └──────────────────────────────────────────────┘ │                           │
 *                │                     │ ┌──────────────────────────────────────────────┐ │                           │
 *                │                     │ │                                              │ │                           │
 *                │                     │ │                                              │ │                           │
 *                │                     │ │    Initializing Tables with a Set of Data    │ │                           │
 *                │                     │ │                                              │ │                           │
 *                │                     │ │                                              │ │                           │
 *                │                     │ └──────────────────────────────────────────────┘ │                           │
 *                │                     │ ┌──────────────────────────────────────────────┐ │                           │
 *                │                     │ │                                              │ │                           │
 *                │                     │ │                                              │ │  Creating Tables, Views   │
 *                │       PL/pgSQL      │ │                Creating Views                │ │     Indexes and Roles     │
 *                │                     │ │                                              │ │                           │
 *                │                     │ │                                              │ │                           │
 *                │                     │ └──────────────────────────────────────────────┘ │                           │
 *                │                     │ ┌──────────────────────────────────────────────┐ │                           │
 *                │                     │ │                                              │ │                           │
 *                │                     │ │                                              │ │                           │
 *                │                     │ │               Creating Indexes               │ │                           │
 *                │                     │ │                                              │ │                           │
 *                │                     │ │                                              │ │                           │
 *                │                     │ └──────────────────────────────────────────────┘ │                           │
 *                │                     │ ┌──────────────────────────────────────────────┐ │                           │
 *                │                     │ │                                              │ │                           │
 *                │                     │ │           Creating Roles of Users            │ │                           │
 *                │                     │ │                     and                      │ │                           │
 *                │                     │ │            Granting Permissions              │ │                           │
 *                │                     │ │                                              │ │                           │
 *                │                     │ └──────────────────────────────────────────────┘ │                           │
 *                │                     └──────────────────────────────────────────────────┘                           │
 *                │                                                                                                    │
 *                │                                                                                                    │
 *                │----------------------------------------------------------------------------------------------------│
 *                │                                                                                                    │
 *                │                                                                                                    │
 *                │                       ┌──────────────────────────────────────────────┐                             │
 *                │                       │                                              │                             │
 *                │                       │                                              │                             │
 *                │                       │      Creating Procedures and Functions       │                             │
 *                │                       │                                              │                             │
 *                │                       │                                              │                             │
 *                │       PL/pgSQL        └──────────────────────────────────────────────┘     Creating Automated      │
 *                │                       ┌──────────────────────────────────────────────┐   Functionality and Tools   │
 *                │                       │                                              │         for Users           │
 *                │                       │                                              │                             │
 *                │                       │   Creating Trigger Functions and Triggers    │                             │
 *                │                       │                                              │                             │
 *                │                       │                                              │                             │
 *                │                       └──────────────────────────────────────────────┘                             │
 *                │                                                                                                    │
 *                │                                                                                                    │
 *                │-----------------------------------[ END OF INSTALLATION ]------------------------------------------│
 *                │                                                                                                    │
 *                │                                                                                                    │
 *                │                                                                                                    │
 *                │                       ┌──────────────────────────────────────────────┐                             │
 *                │                       │                                              │                             │
 *                │                       │    Demonstrating Elements of the Installed   │                             │
 *                │          psql         │      Database, Automated Functionality       │     Presentation of the     │
 *                │                       │             and Tools for Users              │     Installed Database      │
 *                │                       │                                              │                             │
 *                │                       └──────────────────────────────────────────────┘                             │
 *                │                                                                                                    │
 *                │                                                                                                    │
 *                │                                                                                                    │
 *                └────────────────────────────────────────[ END OF SCRIPT ]───────────────────────────────────────────┘
 *
 *
 *                                                               * * *
 *
 *
 *
 *
 *
 *                                                   2. O B J E C T   D O M A I N
 *
 *
 *
 *               ┌──────────────────────────────────────[ D I S C L A I M E R ]───────────────────────────────────────┐
 *               │                                                                                                    │
 *               │  All names used in this script are fictios and any resemblance to actual persons, living or dead,  │
 *               │                                       is purely coincidental.                                      │
 *               │                                                                                                    │
 *               └────────────────────────────────────────────────────────────────────────────────────────────────────┘
 *
 *
 *
 *               The object domain of this project is a restuarant with the following entities (represented in the database
 *             by corresponding tables):
 *
 *
 *
 *                                                             M O N E Y
 *
 *                                                      - Money of Restaurant
 *
 *                                                      - Income or Expense Log
 *
 *
 *
 *
 *                                                              M E A L
 *
 *                                                         - Kind of Menu
 *
 *                                                         - Menu Section
 *
 *                                                         - Dish
 *
 *
 *
 *
 *                                                             S T A F F
 *
 *
 *                                                       - Job
 *
 *                                                       - Working Time Schedule
 *
 *                                                       - Employee
 *
 *                                                       - Working Time Log
 *
 *                                                       - Salary
 *
 *                                                       - Staff Tips
 *
 *                                                       - Staff Earnings
 *
 *
 *
 * 
 *                                                       G U E S T   T A B L E S
 *
 *                                                         - Guest Table
 *
 *
 *
 *
 *                                                            G U E S T S
 *
 *                                                            - Guest
 *
 *
 *
 *
 *                                                            O R D E R S
 *
 *                                                       - Status of Order
 *
 *                                                       - Order
 * 
 *                                                       - Bill
 *
 *                                                       - Kind of Payment
 *
 *                                                       - Payment
 *
 *
 *
 *
 *                                                  D I S C O U N T   S Y S T E M S
 *
 *                                                   - Discount Promotion for Dishes
 *
 *                                                   - Discount Promotion for Orders
 *
 *                                                   - Kind of Discount Card
 *
 *                                                   - Guest Discount Card
 *
 *
 *
 *
 *                                             A C C E S S   C O N T R O L   S Y S T E M
 *
 *                                                   - Proximity Card
 *
 *                                                   - Proximity Card of Employee
 *
 *                                                   - Proximity Card Reader
 * 
 *                                                   - Access Control System Action
 *
 *                                                   - Access Control System Record
 *
 *
 *
 *
 *                                                 S T A F F   V I O L A T I O N S
 *
 *                                                      - Kind of Violation
 *
 *                                                      - Violation
 *
 *                                                      - Violations Log Record
 *
 *
 *
 *
 *                                                  A U T O M A T E D   T A S K S
 *
 *                                                       - Timer Signal
 *
 *                                                       - Task of Signal
 *
 *                                                       - Notification
 *
 *
 *                                                             * * *
 *
 *
 *
 *
 *                                                  3. R O O T   E L E M E N T S
 *
 *
 *                                               The root objects of the project are:
 *
 *
 *                                                       Database "base4yaro"
 *
 *                                                              and
 *
 *                                                        Schema "ресторан"
 *
 *
 *
 *            These are the objects where all other data elements of the project (except roles of users) to be deployed.
 *
 *
 *
 *
 *                                                             * * *
 *
 *
 *
 *
 *                                                        4. T A B L E S
 *
 *
 *                                           There are 39 tables in the project in total:
 *
 *
 *
 *                            - "деньги_ресторана" (Money of Restaurant Entity Table);
 *
 *                            - "доход_либо_расход" (Income and Expense Log Entity Table);
 *
 *
 *
 *
 *                            - "вариант_меню" (Menu Variant Entity Table);
 *
 *                            - "раздел_меню"  (Menu Section Entity Table);
 *
 *                            - "блюдо"        (Dish Entity Table);
 *
 *                            - "блюдо_раздел" (Intermediate Table for many:many Relationship between Two Entities: [Dish] >──< [Menu Section]);
 *
 *
 *
 *
 *                            - "должность"               (Job Position Entity Table);
 *
 *                            - "график_рабочего_времени" (Working Time Schedule Entity Table);
 *
 *                            - "оклад"                   (Salary Entity Table);
 *
 *                            - "сотрудник"               (Employee Entity Table);
 *
 *                            - "табель_учёта_рв"         (Working Time Log Entity Table);
 *
 *                            - "чаевые_сотрудника"       (Employee Tipps Entity Table);
 *
 *                            - "зарплата_сотрудника"     (Employee Earnings Entity Table);
 *
 *
 *
 *
 *                            - "столик" (Guest Table Entity Table);
 *
 *
 *
 *
 *                            - "товар_закупок" (Purchase Good Entity Table);
 *
 *
 *
 *
 *                            - "гость" (Guest Entity Table);
 *
 *
 *
 *
 *                            - "заказ"       (Order Entity Table);
 *
 *                            - "блюдо_заказ" (Intermediate Table for many:many Relationship between Two Entities: [Dish] >──< [Order]);
 *
 *                            - "счёт"        (Bill Entity Table);
 *
 *                            - "вид_платежа" (Kind of Payment Entity Table);
 *
 *                            - "платёж"      (Payment Entity Table);
 *
 *
 *
 *
 *                            - "акция_на_заказы"       (Discount Promotion for Orders);
 *
 *                            - "акция_на_блюда"        (Discount Promotion for Dishes);
 *
 *                            - "блюдо_акция"           (Intermediate Table for Relationship between Two Entities: [Dish] >──< [Discount Promotion for Dishes]);
 *
 *                            - "вид_карты_скидок"      (Kind of Discount Card Entity Table);
 *
 *                            - "гостевая_карта_скидок" (Guest Discount Card Entity Table);
 *
 *
 *
 *
 *                            - "ключ_карта_скуд"       (Proximity Card Entity Table);
 *
 *                            - "ключ_карта_сотрудника" (Employee Proximity Card Entity Table);
 *
 *                            - "считыватель"           (Proximity Card Reader Entity Table);
 *
 *                            - "действие_скуд"         (Access Control System Action Entity Table);
 *
 *                            - "запись_скуд"           (Access Control System Record Entity Table);
 *
 *
 *
 *
 *                            - "вид_нарушения"    (Kind of Violation Entity Table);
 *
 *                            - "нарушение"        (Violation Entity Table);
 *
 *                            - "журнал_нарушений" (Violations Log Entity Table);
 *
 *
 *
 *
 *                            - "сигнал_таймера"  (Timer Signal Entity Table);
 *
 *                            - "команда_сигнала" (Signal Task Entity Table);
 *
 *                            - "оповещение"      (Notification Entity Table);
 *
 *
 * 
 *
 *
 *      The following initial set of data is added into the above indicated tables during the installation process:
 *
 *
 *
 *                                            M O N E Y
 *
 *                        + 1 000 000 money units into money of restaurant;
 *
 *
 *
 *                                             M E A L
 *
 *                                + 3 kinds of menu;
 *
 *                                + 3 sections into each kind of menu;
 *
 *                                + 35 dishes;
 *
 *                                + 5 dishes into each menu section;
 *
 *
 *
 *                                            S T A F F
 *
 *                                      + 7 jobs;
 *
 *                                      + 3 working time schedules;
 *
 *                                      + 5 salaries;
 *
 *                                      + 7 employees;
 *
 *
 *
 *                                      G U E S T   T A B L E S
 *
 *                                        + 20 guest tables;
 *
 *
 *
 *                                           G U E S T S
 *
 *                                           + 5 guests;
 *
 *
 *
 *                                D I S C O U N T   S Y S T E M S
 *
 *                               + 3 kinds of guest discount cards;
 *
 *                               + 5 guest discount cards;
 * 
 *                               + 3 discount promotions for orders;
 *
 *                               + 3 discount promotions for dishes;
 *
 *                               + 15 dishes of discount promotion;
 *
 *
 *
 *                              S T A F F   A C C E S S   C O N T R O L
 *
 *
 *                         + 20 new proximity cards;
 *
 *                         + 7 proximity cards for staff;
 *
 *                         + 2 proximity card readers ('in'/'out');
 *
 *                         + 2 access control system actions ('open─▶close'/'access denied');
 *
 *
 *
 *                                       V I O L A T I O N S
 *
 *                                     + 3 kinds of violations;
 *
 *                                     + 9 variants of violations;
 *
 *
 *
 *                                  A U T O M A T E D   T A S K S
 *
 *                                       + 5 signal tasks;
 *
 *
 *
 *
 *                                              * * *
 *
 *
 *
 *
 *                                         5. V I E W S
 *
 *
 *             The following views are created by the installation process:
 *
 *
 *
 *                    VIEW NAME                                          DESCRIPTION
 *
 *           -  ve_блюдо_и_скидка                        Information about prices and discounts for all dishes
 *           -  ve_блюдо_со_скидкой_в_заказе             Information about dishes of the order
 *           -  ve_выручка_за_день                       Income of the day
 *           -  ve_выручка_нарастающим_итогом            Income as a cumulative total sum
 *           -  ve_выручка_сотр_нар_итог_в_дате          Income as a cumulative total for employee in a date
 *           -  ve_выручка_сотр_нар_итог_всё_вр          Income as a cumulative total for employee for all time
 *           -  ve_диаграмма_скуд                        Access control data diagram for a date and employee
 *           -  ve_запись_скуд_нарушения                 Access control system data analysis
 *           -  ve_запись_скуд_с_параметрами             Access control system data with parameters
 *           -  ve_зс_расчёт_рв                          Working time calculation
 *           -  ve_меню_и_блюда                          Menus and dishes info
 *           -  ve_общ_выручка_нар_итог_в_дате           Restaurant orders income as a cumulative total in a date
 *           -  ve_общ_выручка_нар_итог_всё_вр           Restaurant orders income as a cumulative total for all time
 *           -  ve_платежи_по_счетам                     Bills payments info
 *
 *
 *
 *
 *                                              * * *
 *
 *
 *
 *
 *                                        6. I N D E X E S
 *
 *
 *               The following indexes are created explicitly during the installation process:
 *
 *
 *
 *               TABLE                         INDEX NAME                      SORTED TABLE COLUMNS / SORTING DIRECTION
 *
 *           "запись_скуд"                   idx_on_зс_1_время                 запись_скуд(время_записи_скуд)
 *                                           idx_on_зс_2_считыватель           запись_скуд(считыватель)
 *                                           idx_on_зс_3_действие              запись_скуд(действие_скуд)
 *
 *
 *
 *           "сотрудник"                     idx_on_сотрудник_1_иоф            сотрудник(имя_сотрудника, отчество_сотрудника, фамилия_сотрудника)
 *
 *
 *
 *           "график_рабочего_времени"       idx_on_график_рв_1                график_рабочего_времени(начало_рабочего_времени)
 *                                           idx_on_график_рв_2                график_рабочего_времени(начало_рабочего_времени DESC)
 *                                           idx_on_график_рв_3                график_рабочего_времени(конец_рабочего_времени)
 *                                           idx_on_график_рв_4                график_рабочего_времени(конец_рабочего_времени DESC)
 *
 *
 *
 *           "журнал_нарушений"              idx_on_жн_1_нарушитель_дата       журнал_нарушений(нарушитель, дата_нарушения)
 *                                           idx_on_жн_2_время                 журнал_нарушений(время_нарушения)
 *
 *
 *
 *           "заказ"                         idx_on_заказ_1_нач_ts             заказ(время_заказа)
 *                                           idx_on_заказ_2_кон_ts             заказ(время_освобождения_столика)
 *                                           idx_on_заказ_3_дата               заказ((время_заказа::date))
 *                                           idx_on_заказ_4_дата_стол          заказ((время_заказа::date), столик)
 *                                           idx_on_заказ_5_нач_t              заказ((время_заказа::time))
 *                                           idx_on_заказ_6_сотр               заказ(сотрудник)
 *                                           idx_on_заказ_7_статус             заказ(статус_заказа)
 *                                           idx_on_заказ_8_дата_стол_нач_t    заказ((время_заказа::date), столик, (время_заказа::time))
 *
 *
 *
 *           "столик"                        idx_on_столик_1_desc              столик(id_столика DESC)
 *
 *
 *
 *
 *                                             * * *
 *
 *
 *
 *
 *                                          7. R O L E S
 *
 *
 *                  The following roles are created during the installation process:
 *
 *
 *
 *                                           GROUP ROLES
 *
 *                           - rst_admins  (permissions: all           )
 *                           - rst_users   (permissions: limited access)
 *                           - rst_viewers (permissions: read-only     )
 *
 *
 *                                           USER ROLES
 *
 *               User Roles by Format 'rst_user_' + User ID, with Password = User ID:
 *
 *                                 rst_user_1..7 (password: 1..7)
 *
 *
 *
 *                                      GRANTING PERMISSIONS
 *
 *        Permissions are distributed between users according to their job positions as follows:
 *
 *                           Job Position(ID)    --->     Group Role
 *
 *                            Управляющий(1)
 *                              Бухгалтер(3)     --->     rst_admins
 *                 Технический специалист(6)
 *                               Аналитик(7)
 *
 *                               Официант(4)     --->     rst_users
 *                                  Повар(5)
 *
 *                           Сотрудник СБ(2)     --->     rst_viewers
 *
 *
 *
 *
 *                                             * * *
 *
 *
 *
 *
 *                         8. P R O C E D U R E S   A N D   F U N C T I O N S
 *
 *
 *
 *          (The Following List of Procedures and Functions was built by Procedure #27)
 *
 *
 *
 *                              P R O C E D U R E S
 *
 *
 *               Procedure #1
 *
 *               активировать_ключ_карты(
 *
 *                   пользователь_карты    integer
 *
 *               )
 *
 *
 *               Procedure #2
 *
 *               выдать_зп(
 *
 *                   какому_сотруднику    integer
 *                 , за_какой_месяц       integer
 *                 , какого_года          integer
 *                 , когда                timestamp without time zone
 *
 *               )
 *
 *
 *               Procedure #3
 *
 *               выдать_зп_сотруднику(
 *
 *                   какому_сотруднику    integer
 *                 , за_какой_месяц       integer
 *                 , какого_года          integer
 *                 , когда                timestamp without time zone
 *
 *               )
 *
 *
 *               Procedure #4
 *
 *               выписать_счёт(
 *
 *                   за_какой_заказ    integer
 *                 , в_какое_время     timestamp without time zone
 *                 , id_для_счёта      integer
 *
 *               )
 *
 *
 *               Procedure #5
 *
 *               деактивировать_ключ_карты(
 *
 *                   пользователь_карты    integer
 *
 *               )
 *
 *
 *               Procedure #6
 *
 *               день_случ_заказов(
 *
 *                   в_какую_дату    date
 *                 , сколько         integer
 *
 *               )
 *
 *
 *               Procedure #7
 *
 *               день_случ_событий(
 *
 *                   в_какую_дату        date
 *                 , с_нарушениями       boolean
 *                 , максимум_заказов    integer
 *
 *               )
 *
 *
 *               Procedure #8
 *
 *               день_событий_скуд(
 *
 *                   в_какую_дату       date
 *                 , с_наруш_графика    boolean
 *
 *               )
 *
 *
 *               Procedure #9
 *
 *               добавить_блюдо_в_заказ(
 *
 *                   в_какой_заказ    integer
 *                 , какое_блюдо      integer
 *
 *               )
 *
 *
 *               Procedure #10
 *
 *               добавить_в_заказ_скидку_акции(
 *
 *                   в_какой_заказ         integer
 *                 , скидку_какой_акции    integer
 *
 *               )
 *
 *
 *               Procedure #11
 *
 *               добавить_в_заказ_скидку_карты(
 *
 *                   в_какой_заказ         integer
 *                 , скидку_какой_карты    integer
 *
 *               )
 *
 *
 *               Procedure #12
 *
 *               заказы_в_дате(
 *
 *                   в_какой_дате    date
 *
 *               )
 *
 *
 *               Procedure #13
 *
 *               закупить_товар(
 *
 *                   какой_товар    integer
 *                 , количество     integer
 *
 *               )
 *
 *
 *               Procedure #14
 *
 *               заполнить_табель(
 *
 *                   какого_сотрудника    integer
 *                 , за_какой_месяц       integer
 *                 , какого_года          integer
 *
 *               )
 *
 *
 *               Procedure #15
 *
 *               заполнить_табель_сотрудника(
 *
 *                   какого_сотрудника    integer
 *                 , за_какой_месяц       integer
 *                 , какого_года          integer
 *
 *               )
 *
 *
 *               Procedure #16
 *
 *               меню(
 *
 *                   какой_вариант    integer
 *
 *               )
 *
 *
 *               Procedure #17
 *
 *               месяц_случ_событий(
 *
 *                   какой_месяц         integer
 *                 , какого_года         integer
 *                 , с_нарушениями       boolean
 *                 , максимум_заказов    integer
 *
 *               )
 *
 *
 *               Procedure #18
 *
 *               начислить_зп(
 *
 *                   какому_сотруднику    integer
 *                 , за_какой_месяц       integer
 *                 , какого_года          integer
 *
 *               )
 *
 *
 *               Procedure #19
 *
 *               начислить_зп_сотруднику(
 *
 *                   какому_сотруднику    integer
 *                 , за_какой_месяц       integer
 *                 , какого_года          integer
 *
 *               )
 *
 *
 *               Procedure #20
 *
 *               оплатить_счёт(
 *
 *                   какой_счёт       integer
 *                 , способ_оплаты    integer
 *                 , сумма            numeric
 *                 , в_какое_время    timestamp without time zone
 *
 *               )
 *
 *
 *               Procedure #21
 *
 *               открыть_новый_заказ(
 *
 *                   столик_заказа    integer
 *                 , карта_скидок     integer
 *                 , акция            integer
 *                 , кто_создал       integer
 *                 , в_какое_время    timestamp without time zone
 *                 , id_для_заказа    integer
 *
 *               )
 *
 *
 *               Procedure #22
 *
 *               отменить_заказ(
 *
 *                   заказ_к_отмене    integer
 *
 *               )
 *
 *
 *               Procedure #23
 *
 *               показать_сообщение(
 *
 *                   текст    character varying
 *
 *               )
 *
 *
 *               Procedure #24
 *
 *               приложить_ключ_карту(
 *
 *                   считыватель    integer
 *                 , карта          integer
 *                 , время          timestamp without time zone
 *
 *               )
 *
 *
 *               Procedure #25
 *
 *               проверить_посл_вых_и_прогул(
 *
 *                   какого_сотрудника    integer
 *                 , за_какую_дату        date
 *
 *               )
 *
 *
 *               Procedure #26
 *
 *               сдать_кассу(
 *
 *                   когда    timestamp without time zone
 *
 *               )
 *
 *
 *               Procedure #27
 *
 *               список_процедур_и_функций(
 *
 *                   схема      character varying
 *                 , отступ     integer
 *                 , префикс    character varying
 *                 , язык       character varying
 *
 *               )
 *
 *
 *               Procedure #28
 *
 *               табель_сотрудника(
 *
 *                   какого_сотрудника    integer
 *                 , за_какой_месяц       integer
 *                 , какого_года          integer
 *
 *               )
 *
 *
 *               Procedure #29
 *
 *               удалить_блюдо_из_заказа(
 *
 *                   из_какого_заказа    integer
 *                 , какое_блюдо         integer
 *
 *               )
 *
 *
 *               Procedure #30
 *
 *               чеки_заказа(
 *
 *                   какого_заказа    integer
 *
 *               )
 *
 *
 *
 *
 *                              F U N C T I O N S
 *
 *
 *               Function #1
 *
 *               был_в_интервале(
 *
 *                   в_какую_дату        date
 *                 , с_какого_времени    time without time zone
 *                 , по_какое_время      time without time zone
 *                 , кто                 integer
 *
 *               )::boolean
 *
 *
 *               Function #2
 *
 *               время_работы(
 *
 *                   какого_сотрудника    integer
 *                 , в_какую_дату         date
 *
 *               )::interval
 *
 *
 *               Function #3
 *
 *               дата_словами(
 *
 *                   дата    date
 *
 *               )::character varying
 *
 *
 *               Function #4
 *
 *               дней_в_месяце(
 *
 *                   в_каком_месяце    integer
 *                 , какого_года       integer
 *
 *               )::integer
 *
 *
 *               Function #5
 *
 *               долг_по_счёту(
 *
 *                   какому_счёту    integer
 *
 *               )::numeric
 *
 *
 *               Function #6
 *
 *               должность_сотрудника(
 *
 *                   какого_сотрудника    integer
 *
 *               )::character varying
 *
 *
 *               Function #7
 *
 *               единичный_разряд_микросекунд()::integer
 *
 *
 *               Function #8
 *
 *               зп_сотрудника(
 *
 *                   какого_сотрудника    integer
 *                 , за_какой_месяц       integer
 *                 , какого_года          integer
 *
 *               )::numeric
 *
 *
 *               Function #9
 *
 *               месяц(
 *
 *                   m    integer
 *
 *               )::character varying
 *
 *
 *               Function #10
 *
 *               мой_id()::integer
 *
 *
 *               Function #11
 *
 *               моё_имя()::character varying
 *
 *
 *               Function #12
 *
 *               оклад_сотрудника(
 *
 *                   какого_сотрудника    integer
 *
 *               )::numeric
 *
 *
 *               Function #13
 *
 *               полное_имя_сотрудника(
 *
 *                   какого_сотрудника    integer
 *
 *               )::character varying
 *
 *
 *               Function #14
 *
 *               про_функция_текстом(
 *
 *                   num        integer
 *                 , pro_nam    text
 *                 , pro_typ    text
 *                 , arg_nam    text[]
 *                 , arg_typ    text[]
 *                 , indent     integer
 *                 , prefix     character varying
 *                 , lang       character varying
 *
 *               )::text
 *
 *
 *               Function #15
 *
 *               рабочее_время_за_месяц_по_табелю(
 *
 *                   какого_сотрудника    integer
 *                 , за_какой_месяц       integer
 *                 , какого_года          integer
 *
 *               )::json
 *
 *
 *               Function #16
 *
 *               рабочий_день(
 *
 *                   какой_день    date
 *
 *               )::boolean
 *
 *
 *               Function #17
 *
 *               растянуть_заголовок(
 *
 *                   строка    character varying
 *
 *               )::character varying
 *
 *
 *               Function #18
 *
 *               свободные_столики()::integer[]
 *
 *
 *               Function #19
 *
 *               скидка_заказа_по_акции(
 *
 *                   какого_заказа    integer
 *
 *               )::numeric
 *
 *
 *               Function #20
 *
 *               скидка_заказа_по_карте(
 *
 *                   какого_заказа    integer
 *
 *               )::numeric
 *
 *
 *               Function #21
 *
 *               случайное_число_в_диапазоне(
 *
 *                   от_какого_значения    integer
 *                 , до_какого_значения    integer
 *
 *               )::integer
 *
 *
 *               Function #22
 *
 *               случайный_официант()::integer
 *
 *
 *               Function #23
 *
 *               случайный_сотрудник()::integer
 *
 *
 *               Function #24
 *
 *               сотрудник_на_работе(
 *
 *                   какой_сотрудник    integer
 *                 , в_какое_время      timestamp without time zone
 *
 *               )::boolean
 *
 *
 *               Function #25
 *
 *               статус_явки(
 *
 *                   какого_сотрудника    integer
 *                 , в_какую_дату         date
 *
 *               )::character varying
 *
 *
 *               Function #26
 *
 *               статус_явки_для_табеля(
 *
 *                   какого_сотрудника    integer
 *                 , в_какую_дату         date
 *
 *               )::character varying
 *
 *
 *               Function #27
 *
 *               статус_явки_по_табелю(
 *
 *                   какого_сотрудника    integer
 *                 , за_какое_число       integer
 *                 , какого_месяца        integer
 *                 , какого_года          integer
 *
 *               )::character varying
 *
 *
 *               Function #28
 *
 *               столик_занят(
 *
 *                   какой_столик    integer
 *
 *               )::boolean
 *
 *
 *               Function #29
 *
 *               строка_на_центр(
 *
 *                   строка         character varying
 *                 , ширина_поля    integer
 *
 *               )::character varying
 *
 *
 *               Function #30
 *
 *               строка_чисел_массива(
 *
 *                   слово                  character varying
 *                 , массив_чисел           integer[]
 *                 , обратная_сортировка    boolean
 *
 *               )::character varying
 *
 *
 *               Function #31
 *
 *               сумма_заказа(
 *
 *                   какого_заказа    integer
 *
 *               )::numeric
 *
 *
 *               Function #32
 *
 *               текст_чека_платежа(
 *
 *                   какого_платежа    integer
 *                 , границы           boolean
 *                 , дубликат          boolean
 *
 *               )::character varying
 *
 *
 *               Function #33
 *
 *               цифра_после_десятичной_запятой(
 *
 *                   какого_числа       numeric
 *                 , в_какой_позиции    integer
 *
 *               )::integer
 *
 *
 *               Function #34
 *
 *               чаевые_сотрудника_за_месяц(
 *
 *                   какого_сотрудника    integer
 *                 , за_какой_месяц       integer
 *                 , какого_года          integer
 *
 *               )::numeric
 *
 *
 *               Function #35
 *
 *               часов_в_графике_сотрудника(
 *
 *                   какого_сотрудника    integer
 *
 *               )::numeric
 *
 *
 *               Function #36
 *
 *               часов_отработано_по_табелю(
 *
 *                   какого_сотрудника    integer
 *                 , за_какое_число       integer
 *                 , какого_месяца        integer
 *                 , какого_года          integer
 *
 *               )::character varying
 *
 *
 *               Function #37
 *
 *               часы_работы(
 *
 *                   какого_сотрудника    integer
 *                 , в_какую_дату         date
 *
 *               )::numeric
 *
 *
 *               Function #38
 *
 *               число_с_пробелами(
 *
 *                   сумма    numeric
 *
 *               )::character varying
 *
 *
 *
 *
 *                                             * * *
 *
 *
 *
 *
 *                                      9. T R I G G E R S
 *
 *
 *             The following triggers are created during the installation process:
 *
 *
 *
 *
 *         TABLE OF EVENT                    TRIGGER NAME                     EVENT           WHEN            TRIGGERING LEVEL         TRIGGER FUNCTION TO BE EXECUTED                          DESCRIPTION OF ACTION
 *
 *
 *       доход_либо_расход:        - trg_BI_дхрсх_проверить_расход            INSERT         BEFORE            FOR EACH ROW            trf_BI_дхрсх_проверить_расход()              Checking if the money of restaurant are enough for the expenses being made
 *
 *                                 - trg_BI_дхрсх_проверка_на_ноль            INSERT         BEFORE            FOR EACH ROW            trf_BI_дхрсх_проверка_на_ноль()              Checking if the operation changes money of restaurant
 *
 *                                 - trg_AI_дхрсх_изм_деньги_ресторана        INSERT         AFTER             FOR EACH ROW            trf_AI_дхрсх_изм_деньги_ресторана()          Changing money of restaurant according to income and expense log
 *
 *
 *
 *           заказ:                - trg_AU_заказ_чаевые_сотр                 UPDATE         AFTER             FOR EACH ROW            trf_AU_заказ_чаевые_сотр()                   Assigning closed order tipps to the employee
 *
 *                                 - trg_BU_заказ_контроль_скидки             UPDATE         BEFORE            FOR EACH ROW            trf_BU_заказ_контроль_скидки()               Checking order staus before applying discount promotion
 *
 *                                 - trg_BU_заказ_вр_закр_заказа              UPDATE         BEFORE            FOR EACH ROW            trf_BU_заказ_вр_закр_заказа()                Registering order closing time
 *
 *                                 - trg_BI_заказ_кто_для_заказа              INSERT         BEFORE            FOR EACH ROW            trf_BI_заказ_кто_для_заказа()                Checking if there is anybody to serve the order
 *
 *
 *
 *         деньги_кассы:           - trg_BU_касса_пров_на_плюс                UPDATE         BEFORE            FOR EACH ROW            trf_BU_касса_пров_на_плюс()                  Checking if the money of cashbox are being increased
 *
 *
 *
 *       журнал_нарушений:         - trg_AI_жн_сообщ_о_нарушении              INSERT         AFTER             FOR EACH ROW            trf_AI_жн_сообщ_о_нарушении()                Sending notification message about registered violation
 *
 *
 *
 *        сигнал_таймера:          - trg_AI_таймер_вып_команду                INSERT         AFTER             FOR EACH ROW            trf_AI_таймер_вып_команду()                  Performing timer task from signal
 *
 *
 *
 *         запись_скуд:            - trg_BI_зс_пров_карту                     INSERT         BEFORE            FOR EACH ROW            trf_BI_зс_пров_карту()                       Checking if the proximity card being applied was activated
 *
 *                                 - trg_AI_зс_пров_график                    INSERT         AFTER             FOR EACH ROW            trf_AI_зс_пров_график()                      Checking if there is a schedule violation
 *
 *                                 - trg_AI_зс_пров_наруш_скуд                INSERT         AFTER             FOR EACH ROW            trf_AI_зс_пров_наруш_скуд()                  Checking if there is an access control system violation
 *
 *
 *
 */




                                   --[ S T A R T   O F   I N S T A L L A T I O N ]--


---------------------------------------❬ CREATING ROOT ELEMENTS OF THE DATABASE ❭---------------------------------------

\set ON_ERROR_STOP on



\echo
\echo
\echo ' ╔═════════════════════════════════════════════════════╗'
\echo ' ║ ◉                                                 ◉ ║'
\echo ' ║                    База Данных                      ║'
\echo ' ║                                                     ║'
\echo ' ║                 "Р Е С Т О Р А Н"                   ║'
\echo ' ║                                                     ║'
\echo ' ║                                                     ║'
\echo ' ║               © 2022 Ярослав Козлов                 ║'
\echo ' ║ ◉                                                 ◉ ║'
\echo ' ╚═════════════════════════════════════════════════════╝'
\echo
\echo
\echo
\echo '        --[ С Т А Р Т   У С Т А Н О В К И ]--'
\echo
\echo
\echo
\echo '    --❬ СОЗДАНИЕ КОРНЕВЫХ ЭЛЕМЕНТОВ БАЗЫ ДАННЫХ ❭--'
\echo
\echo '- Проверка отсутствия подключения к БД "base4yaro"...'

DO
LANGUAGE plpgsql
$disconnection_check$
BEGIN
    IF current_database() = 'base4yaro'
        THEN
            RAISE EXCEPTION E'\n\nВНИМАНИЕ! Вы подключены к БД "base4yaro" ─▶ удаление БД невозможно.\n'
            USING HINT = E'Для удаления старой версии БД "base4yaro" необходимо подключиться к другой БД и перезапустить скрипт.\nFORMAT:  \\c database_name user_name';
    END IF;
END
$disconnection_check$;

\echo

\echo '- Удаление старой версии БД...'
DROP DATABASE IF EXISTS base4yaro;

\echo

\echo '- Создание базы данных "base4yaro"...'
CREATE DATABASE base4yaro ENCODING 'UTF8';

\echo

\echo '- Установление соединения с БД "base4yaro"...'
\connect base4yaro

\echo

\echo '- Создание схемы "ресторан"...';
CREATE SCHEMA ресторан;

\echo

\echo '- Установка схемы "ресторан" по умолчанию для текущей сессии...'
SET SCHEMA 'ресторан';



----------------------------------------❬ CREATING TABLES/VIEWS/INDEXES/ROLES ❭---------------------------------------



\echo
\echo
\echo '    --❬ СОЗДАНИЕ ТАБЛИЦ/ПРЕДСТАВЛЕНИЙ/ИНДЕКСОВ/РОЛЕЙ ❭--'
\echo

DO
LANGUAGE plpgsql
$table_view_index_role$
BEGIN



                        -- [ T A B L E ] --



    RAISE NOTICE '- Создание таблиц...';

    <<table_block>>
    BEGIN


        -- Table #1
        -- Money of restaurant
        CREATE TABLE деньги_ресторана(

            id_записи               int             DEFAULT 1
                                                    PRIMARY KEY

          , все_деньги_ресторана    numeric(12, 2)  NOT NULL

          , CONSTRAINT только_одна_запись CHECK(id_записи = 1)
          , CONSTRAINT деньги_больше_нуля CHECK(все_деньги_ресторана > 0)

        );


        -- Table #2
        -- Income XOR expense
        CREATE TABLE доход_либо_расход(

            id_операции       serial           PRIMARY KEY
          , имя_операции      varchar          NOT NULL
          , время_операции    timestamp        DEFAULT CURRENT_TIMESTAMP
          , сумма_дохода      numeric(12, 2)
          , сумма_расхода     numeric(12, 2)

          , CONSTRAINT исключающее_или CHECK(
                                              ((сумма_дохода * сумма_расхода) IS NULL)

                                                AND

                                               (coalesce(сумма_дохода, сумма_расхода) IS NOT NULL)
                                            )
       );


        -- Table #3
        -- Good of purchase
        CREATE TABLE товар_закупок(

            id_товара            serial            PRIMARY KEY
          , имя_товара           varchar           NOT NULL
          , единица_измерения    varchar           NOT NULL
          , цена_товара          numeric(12, 2)    NOT NULL

          , CONSTRAINT цена_больше_нуля CHECK(цена_товара > 0)

        );


        -- Table #4
        -- Menu variant
        CREATE TABLE вариант_меню(

            id_меню     int        PRIMARY KEY

          , имя_меню    varchar    UNIQUE
                                   NOT NULL

        );


        -- Table #5
        -- Menu section
        CREATE TABLE раздел_меню(

            меню            int        REFERENCES вариант_меню
                                       ON UPDATE CASCADE
                                       ON DELETE CASCADE

          , id_раздела      int        NOT NULL
          , имя_раздела     varchar    NOT NULL

          , PRIMARY KEY (меню, id_раздела)

        );


        -- Table #6
        -- Dish
        CREATE TABLE блюдо(

            id_блюда            serial            PRIMARY KEY

          , имя_блюда           varchar           UNIQUE
                                                  NOT NULL

          , количество_блюда    varchar           NOT NULL

          , цена_блюда          numeric(12, 2)    NOT NULL

        );


        -- Table #7
        -- Discount promotion for dishes
        CREATE TABLE акция_на_блюда(

            id_акции_на_блюда        serial      PRIMARY KEY
          , имя_акции_на_блюда       varchar     NOT NULL
          , скидка_акции_на_блюда    int         NOT NULL

        );


        -- Table #8
        -- Dish discount promotion
        CREATE TABLE блюдо_акция(

            блюдо             int   PRIMARY KEY
                                    REFERENCES блюдо
                                    ON DELETE CASCADE
                                    ON UPDATE CASCADE

          , акция_на_блюдо    int   NOT NULL
                                    REFERENCES акция_на_блюда
                                    ON DELETE CASCADE
                                    ON UPDATE CASCADE

        );


        -- Table #9
        -- Intermediate table for "many:many" relationship between entities [menu section] >---< [dish]
        CREATE TABLE блюдо_раздел(

            меню      int
          , раздел    int
          , блюдо     int    REFERENCES блюдо
                             ON UPDATE CASCADE
                             ON DELETE CASCADE

          , PRIMARY KEY (меню, раздел, блюдо)

          , FOREIGN KEY (меню, раздел)    REFERENCES раздел_меню
                                          ON UPDATE CASCADE
                                          ON DELETE CASCADE

        );


        -- Table #10
        -- Working time schedule
        CREATE TABLE график_рабочего_времени(

            id_графика                 int        PRIMARY KEY
          , имя_графика                varchar
          , начало_рабочего_времени    time       NOT NULL
          , конец_рабочего_времени     time       NOT NULL

        );


        -- Table #11
        -- Job position
        CREATE TABLE должность(

            id_должности     int        PRIMARY KEY
          , имя_должности    varchar    NOT NULL

        );


        -- Table #12
        -- Salary (pro month)
        CREATE TABLE оклад(

            id_оклада           int                PRIMARY KEY
          , размер_оклада       numeric(12, 2)     NOT NULL

        );


        -- Table #13
        -- Employee
        CREATE TABLE сотрудник(

            id_сотрудника          int         PRIMARY KEY
          , имя_пользователя       varchar     UNIQUE
          , фамилия_сотрудника     varchar
          , имя_сотрудника         varchar
          , отчество_сотрудника    varchar

          , должность_сотрудника   int         NOT NULL
                                               REFERENCES должность

          , график_сотрудника      int         NOT NULL
                                               REFERENCES график_рабочего_времени

          , оклад_сотрудника       int         NOT NULL
                                               REFERENCES оклад

          , телефон_сотрудника     varchar
          , email_сотрудника       varchar

          , CONSTRAINT оклад_больше_нуля CHECK(оклад_сотрудника > 0)

        );


        -- Table #14
        -- Staff working time log;
        CREATE TABLE табель_учёта_рв(

            id_записи_табеля    serial    PRIMARY KEY

          , сотрудник           int       NOT NULL
                                          REFERENCES сотрудник
                                          ON DELETE CASCADE
                                          ON UPDATE CASCADE

          , год                 int       NOT NULL
          , месяц               int       NOT NULL

          , "1"                 jsonb     DEFAULT '{"статус_явки": null, "часов_отработано": null}'
          , "2"                 jsonb     DEFAULT '{"статус_явки": null, "часов_отработано": null}'
          , "3"                 jsonb     DEFAULT '{"статус_явки": null, "часов_отработано": null}'
          , "4"                 jsonb     DEFAULT '{"статус_явки": null, "часов_отработано": null}'
          , "5"                 jsonb     DEFAULT '{"статус_явки": null, "часов_отработано": null}'
          , "6"                 jsonb     DEFAULT '{"статус_явки": null, "часов_отработано": null}'
          , "7"                 jsonb     DEFAULT '{"статус_явки": null, "часов_отработано": null}'
          , "8"                 jsonb     DEFAULT '{"статус_явки": null, "часов_отработано": null}'
          , "9"                 jsonb     DEFAULT '{"статус_явки": null, "часов_отработано": null}'
          , "10"                jsonb     DEFAULT '{"статус_явки": null, "часов_отработано": null}'
          , "11"                jsonb     DEFAULT '{"статус_явки": null, "часов_отработано": null}'
          , "12"                jsonb     DEFAULT '{"статус_явки": null, "часов_отработано": null}'
          , "13"                jsonb     DEFAULT '{"статус_явки": null, "часов_отработано": null}'
          , "14"                jsonb     DEFAULT '{"статус_явки": null, "часов_отработано": null}'
          , "15"                jsonb     DEFAULT '{"статус_явки": null, "часов_отработано": null}'
          , "16"                jsonb     DEFAULT '{"статус_явки": null, "часов_отработано": null}'
          , "17"                jsonb     DEFAULT '{"статус_явки": null, "часов_отработано": null}'
          , "18"                jsonb     DEFAULT '{"статус_явки": null, "часов_отработано": null}'
          , "19"                jsonb     DEFAULT '{"статус_явки": null, "часов_отработано": null}'
          , "20"                jsonb     DEFAULT '{"статус_явки": null, "часов_отработано": null}'
          , "21"                jsonb     DEFAULT '{"статус_явки": null, "часов_отработано": null}'
          , "22"                jsonb     DEFAULT '{"статус_явки": null, "часов_отработано": null}'
          , "23"                jsonb     DEFAULT '{"статус_явки": null, "часов_отработано": null}'
          , "24"                jsonb     DEFAULT '{"статус_явки": null, "часов_отработано": null}'
          , "25"                jsonb     DEFAULT '{"статус_явки": null, "часов_отработано": null}'
          , "26"                jsonb     DEFAULT '{"статус_явки": null, "часов_отработано": null}'
          , "27"                jsonb     DEFAULT '{"статус_явки": null, "часов_отработано": null}'
          , "28"                jsonb     DEFAULT '{"статус_явки": null, "часов_отработано": null}'
          , "29"                jsonb     DEFAULT '{"статус_явки": null, "часов_отработано": null}'
          , "30"                jsonb     DEFAULT '{"статус_явки": null, "часов_отработано": null}'
          , "31"                jsonb     DEFAULT '{"статус_явки": null, "часов_отработано": null}'

          , UNIQUE (сотрудник, год, месяц)

        );


        -- Table #15
        -- Staff earnings
        CREATE TABLE зарплата(

            id_зарплаты            serial            PRIMARY KEY
          , год_зарплаты           int               NOT NULL
          , месяц_зарплаты         int               NOT NULL

          , сотрудник              int               NOT NULL
                                                     REFERENCES сотрудник
                                                     ON DELETE CASCADE
                                                     ON UPDATE CASCADE

          , зарплата_выдана        bool              DEFAULT FALSE
          , зарплата_сотрудника    numeric(12, 2)    NOT NULL

          , CONSTRAINT зп_больше_нуля CHECK(зарплата_сотрудника > 0)

        );


        -- Table #16
        -- Guest
        CREATE TABLE гость(

            id_гостя          serial     PRIMARY KEY
          , фамилия_гостя     varchar
          , имя_гостя         varchar
          , отчество_гостя    varchar
          , телефон_гостя     varchar
          , email_гостя       varchar

        );


        -- Table #17
        -- Guest table
        CREATE TABLE столик(

            id_столика      int     PRIMARY KEY
          , дата_закупки    date    DEFAULT CURRENT_DATE
          , столик_занят    bool    DEFAULT FALSE

        );


        -- Table #18
        -- Kind of discout card ('guest card'/'gold card'/'VIP card')
        CREATE TABLE вид_карты_скидок(

            id_вида_карты_скидок     int        PRIMARY KEY
          , имя_вида_карты_скидок    varchar    NOT NULL
          , скидка_вида              int        NOT NULL

        );


        -- Table #19
        -- Guest discount card
        CREATE TABLE гостевая_карта_скидок(

            id_карты_гостя           serial    PRIMARY KEY

          , вид_карты_скидок         int       NOT NULL
                                               DEFAULT 1
                                               REFERENCES вид_карты_скидок
                                               ON DELETE CASCADE
                                               ON UPDATE CASCADE

          , владелец_карты_скидок    int       NOT NULL
                                               UNIQUE
                                               REFERENCES гость
                                               ON DELETE CASCADE
                                               ON UPDATE CASCADE

        );


        -- Table #20
        -- Discount order promotion
        CREATE TABLE акция_на_заказы(

            id_акции_на_заказы        serial     PRIMARY KEY
          , имя_акции_на_заказы       varchar    NOT NULL

          , скидка_акции_на_заказы    int        NOT NULL
                                                 DEFAULT 5

        );


        -- Table #21
        -- Status of order ('open'/'bill issued'/'closed')
        CREATE TABLE статус_заказа(

            id_статуса_заказа     int        PRIMARY KEY
          , имя_статуса_заказа    varchar

        );


        -- Table #22
        -- Order
        CREATE TABLE заказ(

            id_заказа                     serial       PRIMARY KEY

          , время_заказа                  timestamp    NOT NULL
                                                       DEFAULT CURRENT_TIMESTAMP

          , время_освобождения_столика    timestamp
          , время_закрытия_заказа         timestamp

          , сотрудник                     int          NOT NULL
                                                       REFERENCES сотрудник

          , столик                        int          NOT NULL
                                                       REFERENCES столик

          , гостевая_карта_скидок         int          REFERENCES гостевая_карта_скидок
          , акция_на_заказ                int          REFERENCES акция_на_заказы

          , статус_заказа                 int          NOT NULL
                                                       DEFAULT 1
                                                       REFERENCES статус_заказа

        );


        -- Table #23
        -- Tips of employee
        CREATE TABLE чаевые_сотрудника(

            заказ_чаевых               int               REFERENCES заказ
                                                         PRIMARY KEY

          , сотрудник_чаевых           int               NOT NULL
                                                         REFERENCES сотрудник
                                                         ON DELETE CASCADE
                                                         ON UPDATE CASCADE

          , сумма_чаевых_сотрудника    numeric(12, 2)    NOT NULL

        );


        -- Table #24
        -- Bill
        CREATE TABLE счёт(

            id_счёта               serial            PRIMARY KEY

          , время_выписки_счёта    timestamp         NOT NULL
                                                     DEFAULT CURRENT_TIMESTAMP

          , заказ                  int               UNIQUE
                                                     NOT NULL
                                                     REFERENCES заказ
                                                     ON DELETE CASCADE
                                                     ON UPDATE CASCADE

          , сумма_счёта            numeric(12, 2)    NOT NULL
          , сумма_чаевых           numeric(12, 2)    NOT NULL

          , счёт_оплачен           bool              NOT NULL
                                                     DEFAULT FALSE

          , текст_блок             varchar

        );


        -- Table #25
        -- Kind of payment (cash/card)
        CREATE TABLE вид_платежа(

            id_вида_платежей     int        PRIMARY KEY
          , имя_вида_платежей    varchar

        );


        -- Table #26
        -- Payment
        CREATE TABLE платёж(

            id_платежа       serial            PRIMARY KEY
          , кассир           int               NOT NULL
          , время_платежа    timestamp         DEFAULT CURRENT_TIMESTAMP

          , счёт             int               NOT NULL
                                               REFERENCES счёт
                                               ON DELETE CASCADE
                                               ON UPDATE CASCADE

          , вид_платежа      int               DEFAULT 1 -- By card
                                               REFERENCES вид_платежа
                                               ON DELETE CASCADE
                                               ON UPDATE CASCADE

          , сумма_платежа    numeric(12, 2)    NOT NULL

          , CONSTRAINT сумма_больше_нуля CHECK(сумма_платежа > 0)

        );


        -- Table #27
        -- Money in cashbox
        CREATE TABLE деньги_кассы(

            id_записи           INT               DEFAULT 1
                                                  PRIMARY KEY

          , все_деньги_кассы    NUMERIC(12, 2)    NOT NULL

          , CONSTRAINT только_одна_запись CHECK(
                                                 (id_записи = 1) -- To have a single record of the sum

                                                  AND

                                                 (все_деньги_кассы > 999) -- To have ever a change for payments
                                               )

        );


        -- Table #28
        -- Dish of order
        -- Intermediate table for "many:many" relationship [order] >---< [dish]
        CREATE TABLE блюдо_заказ(

            id_блюда_заказа    serial    PRIMARY KEY

          , заказ              int       NOT NULL
                                         REFERENCES заказ
                                         ON DELETE CASCADE
                                         ON UPDATE CASCADE

          , блюдо              int       NOT NULL
                                         REFERENCES блюдо
                                         ON DELETE CASCADE
                                         ON UPDATE CASCADE

        );


        -- Table #29
        -- Proximity cards
        CREATE TABLE ключ_карта_скуд(

            id_ключ_карты              serial    PRIMARY KEY

          , ключ_карта_активирована    bool      NOT NULL
                                                 DEFAULT FALSE

        );


        -- Table #30
        -- Proximity cards of staff
        CREATE TABLE ключ_карта_сотрудника(

            ключ_карта    int    REFERENCES ключ_карта_скуд
                                 ON DELETE CASCADE
                                 ON UPDATE CASCADE
                                 PRIMARY KEY

          , сотрудник     int    NOT NULL
                                 REFERENCES сотрудник
                                 ON DELETE CASCADE
                                 ON UPDATE CASCADE

        );


        -- Table #31
        -- Proximity card reader
        CREATE TABLE считыватель(

            id_считывателя     int        PRIMARY KEY
          , имя_считывателя    varchar

        );


        -- Table #32
        -- Access control system action ('open ─▶ close'/'access denied')
        CREATE TABLE действие_скуд(

            id_действия_скуд     int        PRIMARY KEY
          , имя_действия_скуд    varchar    NOT NULL

        );


        -- Table #33
        -- Access control system record
        CREATE TABLE запись_скуд(

            id_записи_скуд       serial       PRIMARY KEY
          , время_записи_скуд    timestamp    DEFAULT CURRENT_TIMESTAMP

          , считыватель          int          NOT NULL
                                              REFERENCES считыватель

          , ключ_карта           int          NOT NULL
                                              REFERENCES ключ_карта_скуд

          , действие_скуд        int          NOT NULL
                                              DEFAULT 1
                                              REFERENCES действие_скуд

        );


        -- Table #34
        -- Kind of violation
        CREATE TABLE вид_нарушения(

            id_вида_нарушения     int        PRIMARY KEY
          , имя_вида_нарушения    varchar    NOT NULL

        );


        -- Table #35
        -- Violation
        CREATE TABLE нарушение(

            id_нарушения     int        PRIMARY KEY
          , имя_нарушения    varchar    NOT NULL

          , вид_нарушения    int        NOT NULL
                                        REFERENCES вид_нарушения
                                        ON DELETE CASCADE
                                        ON UPDATE CASCADE

        );


        -- Table #36
        -- Staff violations log
        CREATE TABLE журнал_нарушений(

            id_записи_нарушения       serial       PRIMARY KEY
          , время_записи_нарушения    timestamp    DEFAULT CURRENT_TIMESTAMP
          , дата_нарушения            date
          , время_нарушения           varchar
          , нарушитель                int          REFERENCES сотрудник

          , нарушение                 int          NOT NULL
                                                   REFERENCES нарушение

        );


        -- Table #37
        -- Notification
        CREATE TABLE оповещение(

            id_оповещения         serial     PRIMARY KEY

          , адресат_оповещения    int        NOT NULL
                                             REFERENCES сотрудник
                                             ON DELETE CASCADE
                                             ON UPDATE CASCADE

          , текст_оповещения      varchar    NOT NULL

        );


        -- Table #38
        -- Signal command
        CREATE TABLE команда_сигнала(

            id_команды        int        PRIMARY KEY
          , имя_команды       varchar    NOT NULL
          , скрипт_команды    varchar    NOT NULL

        );


        -- Table #39
        -- Timer signal
        CREATE TABLE сигнал_таймера(

            id_сигнала_таймера         serial       PRIMARY KEY
          , время_сигнала_таймера      timestamp    DEFAULT CURRENT_TIMESTAMP

          , команда_сигнала_таймера    int          NOT NULL
                                                    REFERENCES команда_сигнала
                                                    ON DELETE CASCADE
                                                    ON UPDATE CASCADE

        );


    END table_block;



              -- [ I N I T I A L I Z A T I O N ] --



    RAISE NOTICE '- Инициализация таблиц...';

    <<init_block>>
    BEGIN


        -- +1 000 000 money units into money of restaurant
        INSERT INTO деньги_ресторана (все_деньги_ресторана)
        VALUES                       (1000000             );



        -- +3 menu variants
        INSERT INTO вариант_меню (id_меню, имя_меню       )
        VALUES
                                 (1,      'Основное меню' )
                               , (2,      'Бизнес-ланч'   )
                               , (3,      'Кофейная карта');



        -- +3 menu sections for each menu
        INSERT INTO раздел_меню (меню,    id_раздела,    имя_раздела       )
        VALUES

                                 -- +3 sections in menu 'Основное меню':

                                 (1,       1,            'Супы'             )
                               , (1,       2,            'Горячие блюда'    )
                               , (1,       3,            'Напитки'          )

                                 -- +3 sections in menu 'Бизнес-ланч':

                               , (2,       1,            'Салаты'           )
                               , (2,       2,            'Супы'             )
                               , (2,       3,            'Горячие блюда'    )

                                 -- +3 sections in menu 'Кофейная карта':

                               , (3,       1,            'Классический кофе')
                               , (3,       2,            'Холодный Кофе'    )
                               , (3,       3,            'Авторские напитки');



        -- +35 dishes
        INSERT INTO блюдо (имя_блюда,                        количество_блюда,    цена_блюда)
        VALUES

                          -- +5 Salads
                          ('Салат Греческий',               '200гр',              270       )
                        , ('Салат Цезарь',                  '220гр',              450       )
                        , ('Салат Овощной',                 '280гр',              290       )
                        , ('Салат с крабовыми палочками',   '150гр',              140       )
                        , ('Салат Оливье',                  '130гр',              140       )

                          -- +5 Soups
                        , ('Суп с куриными фрикадельками',  '300гр',              150       )
                        , ('Борщ',                          '300гр',              150       )
                        , ('Венгерский суп гуляш',          '400гр',              240       )
                        , ('Окрошка с телятиной',           '350гр',              220       )
                        , ('Уха Царская',                   '300гр',              450       )

                          -- +5 Hot dishes
                        , ('Жаркое со свининой в горшочке', '350гр',              360       )
                        , ('Стейк из сёмги',                '150гр',              850       )
                        , ('Перепела на углях',             '2шт',                680       )
                        , ('Шашлык из баранины',            '100гр',              200       )
                        , ('Шашлык из свинины',             '100гр',              200       )


                          -- +20 drinks

                          -- Tea/juice/limonade/cocktail
                        , ('Сок в ассортименте',            '200мл',              160       )
                        , ('Морс ягодный',                  '200мл',              60        )
                        , ('Лимонад в ассортименте',        '500мл',              130       )
                        , ('Чай ПуЭр',                      '400мл',              150       )
                        , ('Молочный коктейль',             '250мл',              150       )

                          -- Classic coffee
                        , ('Кофе Эспрессо',                 '30мл',               50        )
                        , ('Американо',                     '250мл',              100       )
                        , ('Капучино',                      '200мл',              160       )
                        , ('Латте',                         '350мл',              180       )
                        , ('Какао',                         '200мл',              160       )

                          -- Cold coffee
                        , ('Кофе Айс',                       '350мл',              180      )
                        , ('Молоко с кофейным льдом',        '350мл',              200      )
                        , ('Кофе Фраппе',                    '350мл',              180      )
                        , ('Бамбл-кофе',                     '150мл',              200      )
                        , ('Кофейный смузи',                 '500мл',              300      )

                          -- Signature coffee
                        , ('Тыквенный Латте',                '200мл',              350      )
                        , ('Раф домашняя роза',              '200мл',              350      )
                        , ('Кофейный глинтвейн',             '200мл',              400      )
                        , ('Флэт Уайт',                      '200мл',              350      )
                        , ('Чиз Латте',                      '200мл',              350      );



        -- Adding dishes into menu sections
        INSERT INTO блюдо_раздел
            (
                меню
              , раздел

              , блюдо

            )
        VALUES

            -- Filling up menu 'Основное меню'

            -- +5 soups into section 'Супы' in menu 'Основное меню':

            (
                1 -- Menu: 'Основное меню'
              , 1 -- Section: 'Супы'

                -- Get dish id by its name
              , (SELECT
                     id_блюда
                 FROM блюдо
                 WHERE имя_блюда = 'Суп с куриными фрикадельками')
            )

          , (
                1 -- Menu: 'Основное меню'
              , 1 -- Section: 'Супы'

                -- Get dish id by its name
              , (SELECT
                     id_блюда
                 FROM блюдо
                 WHERE имя_блюда = 'Борщ')
            )

          , (
                1 -- Menu: 'Основное меню'
              , 1 -- Section: 'Супы'

                -- Get dish id by its name
              , (SELECT
                     id_блюда
                 FROM блюдо
                 WHERE имя_блюда = 'Венгерский суп гуляш')
            )

          , (
                1 -- Menu: 'Основное меню'
              , 1 -- Section: 'Супы'

                -- Get dish id by its name
              , (SELECT
                     id_блюда
                 FROM блюдо
                 WHERE имя_блюда = 'Окрошка с телятиной')
            )

          , (
                1 -- Menu: 'Основное меню'
              , 1 -- Section: 'Супы'

                -- Get dish id by its name
              , (SELECT
                     id_блюда
                 FROM блюдо
                 WHERE имя_блюда = 'Уха Царская')
            )


            -- +5 hot dishes into section 'Горячие блюда' in menu 'Основное меню':

          , (
                1 -- Menu: 'Основное меню'
              , 2 -- Section: 'Горячие блюда'

                -- Get dish id by its name
              , (SELECT
                     id_блюда
                 FROM блюдо
                 WHERE имя_блюда = 'Жаркое со свининой в горшочке')
            )

          , (
                1 -- Menu: 'Основное меню'
              , 2 -- Section: 'Горячие блюда'

                -- Get dish id by its name
              , (SELECT
                     id_блюда
                 FROM блюдо
                 WHERE имя_блюда = 'Стейк из сёмги')
            )

          , (
                1 -- Menu: 'Основное меню'
              , 2 -- Section: 'Горячие блюда'

                -- Get dish id by its name
              , (SELECT
                     id_блюда
                 FROM блюдо
                 WHERE имя_блюда = 'Перепела на углях')
            )

          , (
                1 -- Menu: 'Основное меню'
              , 2 -- Section: 'Горячие блюда'

                -- Get dish id by its name
              , (SELECT
                     id_блюда
                 FROM блюдо
                 WHERE имя_блюда = 'Шашлык из баранины')
            )

          , (
                1 -- Menu: 'Основное меню'
              , 2 -- Section: 'Горячие блюда'

                -- Get dish id by its name
              , (SELECT
                     id_блюда
                 FROM блюдо
                 WHERE имя_блюда = 'Шашлык из свинины')
            )


            -- +5 drinks into section 'Напитки' in menu 'Основное меню':

           , (
                1 -- Menu: 'Основное меню'
              , 3 -- Section: 'Напитки'

                -- Get dish id by its name
              , (SELECT
                     id_блюда
                 FROM блюдо
                 WHERE имя_блюда = 'Сок в ассортименте')
            )

          , (
                1 -- Menu: 'Основное меню'
              , 3 -- Section: 'Напитки'

                -- Get dish id by its name
              , (SELECT
                     id_блюда
                 FROM блюдо
                 WHERE имя_блюда = 'Морс ягодный')
            )

          , (
                1 -- Menu: 'Основное меню'
              , 3 -- Section: 'Напитки'

                -- Get dish id by its name
              , (SELECT
                     id_блюда
                 FROM блюдо
                 WHERE имя_блюда = 'Лимонад в ассортименте')
            )

          , (
                1 -- Menu: 'Основное меню'
              , 3 -- Section: 'Напитки'

                -- Get dish id by its name
              , (SELECT
                     id_блюда
                 FROM блюдо
                 WHERE имя_блюда = 'Чай ПуЭр')
            )

          , (
                1 -- Menu: 'Основное меню'
              , 3 -- Section: 'Напитки'

                -- Get dish id by its name
              , (SELECT
                     id_блюда
                 FROM блюдо
                 WHERE имя_блюда = 'Молочный коктейль')
            )


            -- Filling up menu 'Бизнес-ланч'

            -- +5 salads into section 'Салаты' in menu 'Бизнес-ланч':

          , (
                2 -- Menu: 'Бизнес-ланч'
              , 1 -- Section: 'Салаты'

                -- Get dish id by its name
              , (SELECT
                     id_блюда
                 FROM блюдо
                 WHERE имя_блюда = 'Салат Греческий')
            )

          , (
                2 -- Menu: 'Бизнес-ланч'
              , 1 -- Section: 'Салаты'

                -- Get dish id by its name
              , (SELECT
                     id_блюда
                 FROM блюдо
                 WHERE имя_блюда = 'Салат Цезарь')
            )

          , (
                2 -- Menu: 'Бизнес-ланч'
              , 1 -- Section: 'Салаты'

                -- Get dish id by its name
              , (SELECT
                     id_блюда
                 FROM блюдо
                 WHERE имя_блюда = 'Салат Овощной')
            )

          , (
                2 -- Menu: 'Бизнес-ланч'
              , 1 -- Section: 'Салаты'

                -- Get dish id by its name
              , (SELECT
                     id_блюда
                 FROM блюдо
                 WHERE имя_блюда = 'Салат с крабовыми палочками')
            )

          , (
                2 -- Menu: 'Бизнес-ланч'
              , 1 -- Section: 'Салаты'

                -- Get dish id by its name
              , (SELECT
                     id_блюда
                 FROM блюдо
                 WHERE имя_блюда = 'Салат Оливье')
            )


            -- +5 soups into section 'Супы' in menu 'Бизнес-ланч':

          , (
                2 -- Menu: 'Бизнес-ланч'
              , 2 -- Section: 'Супы'

                -- Get dish id by its name
              , (SELECT
                     id_блюда
                 FROM блюдо
                 WHERE имя_блюда = 'Суп с куриными фрикадельками')
            )

          , (
                2 -- Menu: 'Бизнес-ланч'
              , 2 -- Section: 'Супы'

                -- Get dish id by its name
              , (SELECT
                     id_блюда
                 FROM блюдо
                 WHERE имя_блюда = 'Борщ')
            )

          , (
                2 -- Menu: 'Бизнес-ланч'
              , 2 -- Section: 'Супы'

                -- Get dish id by its name
              , (SELECT
                     id_блюда
                 FROM блюдо
                 WHERE имя_блюда = 'Венгерский суп гуляш')
            )

          , (
                2 -- Menu: 'Бизнес-ланч'
              , 2 -- Section: 'Супы'

                -- Get dish id by its name
              , (SELECT
                     id_блюда
                 FROM блюдо
                 WHERE имя_блюда = 'Окрошка с телятиной')
            )

          , (
                2 -- Menu: 'Бизнес-ланч'
              , 2 -- Section: 'Супы'

                -- Get dish id by its name
              , (SELECT
                     id_блюда
                 FROM блюдо
                 WHERE имя_блюда = 'Уха Царская')
            )


            -- +5 hot dishes into section 'Горячие блюда' in menu 'Бизнес-ланч':

          , (
                2 -- Menu: 'Бизнес-ланч'
              , 3 -- Section: 'Горячие блюда'

                -- Get dish id by its name
              , (SELECT
                     id_блюда
                 FROM блюдо
                 WHERE имя_блюда = 'Жаркое со свининой в горшочке')
            )

          , (
                2 -- Menu: 'Бизнес-ланч'
              , 3 -- Section: 'Горячие блюда'

                -- Get dish id by its name
              , (SELECT
                     id_блюда
                 FROM блюдо
                 WHERE имя_блюда = 'Стейк из сёмги')
            )

          , (
                2 -- Menu: 'Бизнес-ланч'
              , 3 -- Section: 'Горячие блюда'

                -- Get dish id by its name
              , (SELECT
                     id_блюда
                 FROM блюдо
                 WHERE имя_блюда = 'Перепела на углях')
            )

          , (
                2 -- Menu: 'Бизнес-ланч'
              , 3 -- Section: 'Горячие блюда'

                -- Get dish id by its name
              , (SELECT
                     id_блюда
                 FROM блюдо
                 WHERE имя_блюда = 'Шашлык из баранины')
            )

          , (
                2 -- Menu: 'Бизнес-ланч'
              , 3 -- Section: 'Горячие блюда'

                -- Get dish id by its name
              , (SELECT
                     id_блюда
                 FROM блюдо
                 WHERE имя_блюда = 'Шашлык из свинины')
            )



            -- Filling up menu 'Кофейная карта'

            -- +5 drinks into section 'Классический кофе' in menu 'Кофейная карта':

          , (
                3 -- Menu: 'Кофейная карта'
              , 1 -- Section: 'Классический кофе'

                -- Get dish id by its name
              , (SELECT
                     id_блюда
                 FROM блюдо
                 WHERE имя_блюда = 'Кофе Эспрессо')
            )

          , (
                3 -- Menu: 'Кофейная карта'
              , 1 -- Section: 'Классический кофе'

                -- Get dish id by its name
              , (SELECT
                     id_блюда
                 FROM блюдо
                 WHERE имя_блюда = 'Американо')
            )

          , (
                3 -- Menu: 'Кофейная карта'
              , 1 -- Section: 'Классический кофе'

                -- Get dish id by its name
              , (SELECT
                     id_блюда
                 FROM блюдо
                 WHERE имя_блюда = 'Капучино')
            )

          , (
                3 -- Menu: 'Кофейная карта'
              , 1 -- Section: 'Классический кофе'

                -- Get dish id by its name
              , (SELECT
                     id_блюда
                 FROM блюдо
                 WHERE имя_блюда = 'Латте')
            )

          , (
                3 -- Menu: 'Кофейная карта'
              , 1 -- Section: 'Классический кофе'

                -- Get dish id by its name
              , (SELECT
                     id_блюда
                 FROM блюдо
                 WHERE имя_блюда = 'Какао')
            )


            -- +5 drinks into section 'Холодный Кофе' in menu 'Кофейная карта':

          , (
                3 -- Menu: 'Кофейная карта'
              , 2 -- Section: 'Холодный Кофе'

                -- Get dish id by its name
              , (SELECT
                     id_блюда
                 FROM блюдо
                 WHERE имя_блюда = 'Кофе Айс')
            )

          , (
                3 -- Menu: 'Кофейная карта'
              , 2 -- Section: 'Холодный Кофе'

                -- Get dish id by its name
              , (SELECT
                     id_блюда
                 FROM блюдо
                 WHERE имя_блюда = 'Молоко с кофейным льдом')
            )

          , (
                3 -- Menu: 'Кофейная карта'
              , 2 -- Section: 'Холодный Кофе'

                -- Get dish id by its name
              , (SELECT
                     id_блюда
                 FROM блюдо
                 WHERE имя_блюда = 'Кофе Фраппе')
            )

          , (
                3 -- Menu: 'Кофейная карта'
              , 2 -- Section: 'Холодный Кофе'

                -- Get dish id by its name
              , (SELECT
                     id_блюда
                 FROM блюдо
                 WHERE имя_блюда = 'Бамбл-кофе')
            )

          , (
                3 -- Menu: 'Кофейная карта'
              , 2 -- Section: 'Холодный Кофе'

                -- Get dish id by its name
              , (SELECT
                     id_блюда
                 FROM блюдо
                 WHERE имя_блюда = 'Кофейный смузи')
            )



            -- +5 drinks into section 'Авторские напитки' in menu 'Кофейная карта':

           , (
                3 -- Menu: 'Кофейная карта'
              , 3 -- Section: 'Авторские напитки'

                -- Get dish id by its name
              , (SELECT
                     id_блюда
                 FROM блюдо
                 WHERE имя_блюда = 'Тыквенный Латте')
            )

          , (
                3 -- Menu: 'Кофейная карта'
              , 3 -- Section: 'Авторские напитки'

                -- Get dish id by its name
              , (SELECT
                     id_блюда
                 FROM блюдо
                 WHERE имя_блюда = 'Раф домашняя роза')
            )

          , (
                3 -- Menu: 'Кофейная карта'
              , 3 -- Section: 'Авторские напитки'

                -- Get dish id by its name
              , (SELECT
                     id_блюда
                 FROM блюдо
                 WHERE имя_блюда = 'Кофейный глинтвейн')
            )

          , (
                3 -- Menu: 'Кофейная карта'
              , 3 -- Section: 'Авторские напитки'

                -- Get dish id by its name
              , (SELECT
                     id_блюда
                 FROM блюдо
                 WHERE имя_блюда = 'Флэт Уайт')
            )

          , (
                3 -- Menu: 'Кофейная карта'
              , 3 -- Section: 'Авторские напитки'

                -- Get dish id by its name
              , (SELECT
                     id_блюда
                 FROM блюдо
                 WHERE имя_блюда = 'Чиз Латте')
            );



            -- +3 working time schedules
            INSERT INTO график_рабочего_времени (id_графика,    имя_графика,            начало_рабочего_времени,    конец_рабочего_времени)
            VALUES
                                                (1,            'Администратор',        '9:30',                     '17:30'                )
                                              , (2,            'Основной',             '10:00',                    '18:00'                )
                                              , (3,            'Технический персонал', '07:00',                    '15:00'                );


            -- +7 jobs
            INSERT INTO должность (id_должности,    имя_должности                 )
            VALUES
                                  (1,              'Управляющий'                  )
                                , (2,              'Сотрудник службы безопасности')
                                , (3,              'Бухгалтер'                    )
                                , (4,              'Официант'                     )
                                , (5,              'Повар'                        )
                                , (6,              'Технический специалист'       )
                                , (7,              'Аналитик'                     );


            -- +5 variants of salary
            INSERT INTO оклад (id_оклада, размер_оклада)
            VALUES
                               (1,         25000        )
                             , (2,         30000        )
                             , (3,         50000        )
                             , (4,         70000        )
                             , (5,         100000       );


            -- +7 employees
            INSERT INTO сотрудник (id_сотрудника, фамилия_сотрудника, имя_сотрудника, отчество_сотрудника, должность_сотрудника, график_сотрудника, оклад_сотрудника, телефон_сотрудника, email_сотрудника  )
            VALUES
                                   (1,            'Шатохин',          'Олег',         'Николаевич',         1,                    1,                 5,                NULL,               NULL              )
                                 , (2,            'Марченко',         'Александр',     NULL,                2,                    2,                 3,                NULL,               NULL              )
                                 , (3,            'Кодд',             'Эдгар',         NULL,                3,                    2,                 4,                NULL,               NULL              )
                                 , (4,            'Торвальдс',        'Линус',         NULL,                5,                    2,                 3,                NULL,               NULL              )
                                 , (5,            'Бэкус',            'Джон',          NULL,                4,                    2,                 2,                NULL,               NULL              )
                                 , (6,            'Наур',             'Петер',         NULL,                4,                    2,                 2,                NULL,               NULL              )
                                 , (7,            'Козлов',           'Ярослав',       NULL,                7,                    3,                 3,               '+7(930) 718 4788', 'kozlov_yv@mail.ru');


            -- +5 guests
            INSERT INTO гость (фамилия_гостя, имя_гостя, отчество_гостя, телефон_гостя, email_гостя)
            VALUES
                              ('Николаев',   'Николай', 'Иванович',      NULL,          NULL       )
                            , ('Принцева',   'Лидия',   'Ивановна',      NULL,          NULL       )
                            , ('Коколецци',  'Элихио',   NULL,           NULL,          NULL       )
                            , ('Медрано',    'Хуан',     NULL,           NULL,          NULL       )
                            , ('Ниеброй',    'Петр',     NULL,           NULL,          NULL       );


            -- +20 guest tables
            FOR i IN 1..20
            LOOP
                INSERT INTO столик (id_столика)
                VALUES             (i         );
            END LOOP;


            -- +3 order statuses
            INSERT INTO статус_заказа (id_статуса_заказа, имя_статуса_заказа)
            VALUES
                                      (1,                'Заказ открыт'     )
                                    , (2,                'Выписан счёт'     )
                                    , (3,                'Заказ закрыт'     );


            -- +1 000 money units into cashbox
            INSERT INTO деньги_кассы (все_деньги_кассы)
            VALUES                   (1000            );



            -- +2 kinds of payments
            INSERT INTO вид_платежа (id_вида_платежей, имя_вида_платежей)
            VALUES
                                    (1,               'карта'           )
                                  , (2,               'наличные'        );


            -- +3 kinds of discount cards
            INSERT INTO вид_карты_скидок (id_вида_карты_скидок, имя_вида_карты_скидок, скидка_вида)
            VALUES
                                         (1,                   'Карта гостя',          15         )
                                       , (2,                   'Золотая карта',        30         )
                                       , (3,                   'Карта VIP',            45         );


            -- +5 guest discount cards
            <<guest_card>>
            DECLARE
               гость record;
            BEGIN

               -- For each guest
               FOR гость IN (SELECT * FROM гость)
               LOOP

                  -- Issue a VIP card for the guest
                  INSERT INTO гостевая_карта_скидок (владелец_карты_скидок, вид_карты_скидок)
                  VALUES                            (гость.id_гостя,        3               );

               END LOOP;

            END guest_card;


            -- +3 discount promotopns for orders
            INSERT INTO акция_на_заказы (имя_акции_на_заказы,   скидка_акции_на_заказы)
            VALUES
                                        ('Именинник',           15                    )
                                      , ('Студент',             15                    )
                                      , ('Гостеприимная среда', 30                    );


            -- +3 discount promotions for dishes
            INSERT INTO акция_на_блюда (имя_акции_на_блюда, скидка_акции_на_блюда)
            VALUES
                                       ('Рыбный день',      15                   )
                                     , ('Сыроешка',         45                   )
                                     , ('Кофеман',          30                   );


            -- +15 dishes with discount
            <<dish_discount>>
            DECLARE
               r record;
            BEGIN

              -- For each dish of menu 'Кофейная карта' (menu #3)
              FOR r IN (SELECT
                            *
                        FROM блюдо_раздел
                        WHERE меню = 3)
              LOOP

                -- Give discount promotion 'Кофеман' to the dish
                INSERT INTO блюдо_акция
                    (
                       блюдо
                     , акция_на_блюдо
                    )
                VALUES
                    (
                       r.блюдо -- ID of the dish

                       -- Get promotion id by its name
                     , (SELECT
                            id_акции_на_блюда
                        FROM акция_на_блюда
                        WHERE имя_акции_на_блюда = 'Кофеман')
                    );

              END LOOP;

            END dish_discount;


            -- +20 proximity cards
            FOR i IN 1..20
            LOOP
               INSERT INTO ключ_карта_скуд DEFAULT VALUES;
            END LOOP;


            -- Proximity cards for staff
            <<cards4staff>>
            DECLARE

               один_сотрудник    record;

            BEGIN

                -- For each employee
                FOR один_сотрудник IN (SELECT
                                           *
                                       FROM сотрудник)
                LOOP

                    -- Give a free proximity card to the employee
                    INSERT INTO ключ_карта_сотрудника (сотрудник, ключ_карта)
                    VALUES
                        (
                            один_сотрудник.id_сотрудника

                           -- A proximity card that was not yet associated with an employee
                         , (SELECT
                                id_ключ_карты
                            FROM ключ_карта_скуд
                            WHERE id_ключ_карты NOT IN (SELECT
                                                            ключ_карта
                                                        FROM ключ_карта_сотрудника)
                            LIMIT 1)
                        );

                END LOOP;

                -- Activate all proximity cards of staff
                UPDATE ключ_карта_скуд
                SET ключ_карта_активирована = TRUE
                WHERE id_ключ_карты IN (SELECT
                                            ключ_карта
                                        FROM ключ_карта_сотрудника);

            END cards4staff;


            -- +2 proximity card readers (in/out)
            INSERT INTO считыватель (id_считывателя, имя_считывателя)
            VALUES
                                    (1,             'Вход'          )
                                  , (2,             'Выход'         );



            -- +3 kinds of violations
            INSERT INTO вид_нарушения (id_вида_нарушения, имя_вида_нарушения                   )
            VALUES
                                      (1,                'Нарушение графика рабочего времени'  )
                                    , (2,                'Нарушение требований СКУД'           )
                                    , (3,                'Нарушение порядка оформления заказов');



            -- +9 variants of violations
            INSERT INTO нарушение (id_нарушения, имя_нарушения,                                         вид_нарушения)
            VALUES
                                  (1,           'Вход после начала рабочего времени!',                  1            )
                                , (2,           'Выход в рабочее время!',                               1            )
                                , (3,           'Не отмечен первый вход!',                              2            )
                                , (4,           'Не отмечен последний выход!',                          2            )
                                , (5,           'Не отмечен вход!',                                     2            )
                                , (6,           'Не отмечен выход!',                                    2            )
                                , (7,           'Попытка несанкционированного прохода!',                2            )
                                , (8,           'Попытка изменить скидку заказа после выписки счёта!',  3            )
                                , (9,           'Попытка несанкционированного изъятия денег из кассы!', 3            )
                                , (10,          'Прогул!',                                              1            );


            -- +2 access control actions
            INSERT INTO действие_скуд (id_действия_скуд, имя_действия_скуд    )
            VALUES
                                      (1,               'Открытие ─▶ закрытие')
                                    , (2,               'Отказ в доступе!'    );


            -- +5 commands of signals
            INSERT INTO команда_сигнала  (id_команды, имя_команды,                             скрипт_команды                                                                )
            VALUES
                                         (1,         'Заполнить табель за прошлый месяц',     E''                                                                            )
                                       , (2,         'Заполнить табель за всё время',         E''                                                                            )
                                       , (3,         'Удалить все записи табеля',             E''                                                                            )
                                       , (4,         'Деактивировать ключ-карты сотрудников', E''                                                                            )
                                       , (5,         'Активировать ключ-карты сотрудников',   E''                                                                            )
                                       , (6,         'Вывести сообщение',                     E'CALL показать_сообщение( \'ЭТО ПРОСТО ВЫВОД СООБЩЕНИЯ ПО КОМАНДЕ ТАЙМЕРА!\')');


            -- +5 goods for purchasing
            INSERT INTO товар_закупок(имя_товара,              единица_измерения, цена_товара)
            VALUES
                                      ('Стол',                  'шт.',              7000       )
                                    , ('Стул',                  'шт.',              3000       )
                                    , ('Считыватель ключ-карт', 'шт.',              1500       )
                                    , ('Ключ-карта',            'шт.',              30         )
                                    , ('Кассовый аппарат',      'шт.',              15000      );



    END init_block;



                -- [ V I E W ] --



    RAISE NOTICE '- Создание представлений...';

    <<view_block>>
    BEGIN


        -- View #1
        -- Info about discounts for each dish
        CREATE OR REPLACE VIEW ve_блюдо_и_скидка AS
            SELECT
                б.id_блюда
              , б.имя_блюда
              , б.цена_блюда
              , б.количество_блюда                                                              AS количество

              , аб.имя_акции_на_блюда                                                           AS акция
              , аб.скидка_акции_на_блюда                                                        AS процент_скидки

              , (б.цена_блюда * 0.01 * аб.скидка_акции_на_блюда)::numeric(12, 2)                AS скидка
              , (б.цена_блюда - б.цена_блюда * 0.01 * аб.скидка_акции_на_блюда)::numeric(12, 2) AS цена_со_скидкой

            FROM      блюдо          AS б
            LEFT JOIN блюдо_акция    AS сб ON        б.id_блюда = сб.блюдо
            LEFT JOIN акция_на_блюда AS аб ON сб.акция_на_блюдо = аб.id_акции_на_блюда
            ORDER BY б.id_блюда;


        -- View #2
        -- Info about dishes of menu sections
        CREATE OR REPLACE VIEW ve_меню_и_блюда AS
            SELECT
                вм.*
              , рм.id_раздела
              , рм.имя_раздела
              , бс.*

            FROM      блюдо_раздел      AS бр
            LEFT JOIN ve_блюдо_и_скидка AS бс ON  бр.блюдо  = бс.id_блюда
            LEFT JOIN вариант_меню      AS вм ON  бр.меню   = вм.id_меню
            LEFT JOIN раздел_меню       AS рм ON  бр.меню   = рм.меню
                                                  AND
                                                  бр.раздел = рм.id_раздела

            ORDER BY id_меню, id_раздела, id_блюда;


        -- View #3
        -- Info about discounts for dishes of orders
        CREATE OR REPLACE VIEW ve_блюдо_со_скидкой_в_заказе AS
            WITH
                блюда_заказов_с_джойнами AS (
                    SELECT
                        бз.заказ
                      , бз.id_блюда_заказа

                      , б.id_блюда
                      , б.имя_блюда
                      , б.цена_блюда

                      , аб.скидка_акции_на_блюда                                                AS процент_скидки

                      ,(б.цена_блюда * 0.01 * аб.скидка_акции_на_блюда)::numeric(12, 2)         AS скидка

                      ,(CASE
                             WHEN аб.скидка_акции_на_блюда IS NULL
                                 THEN б.цена_блюда
                             ELSE б.цена_блюда - б.цена_блюда * 0.01 * аб.скидка_акции_на_блюда
                        END)::numeric(12, 2)                                                    AS цена_со_скидкой

                    FROM      блюдо_заказ    AS бз
                    LEFT JOIN блюдо          AS б  ON бз.блюдо          = б.id_блюда
                    LEFT JOIN блюдо_акция    AS сб ON б.id_блюда        = сб.блюдо
                    LEFT JOIN акция_на_блюда AS аб ON сб.акция_на_блюдо = аб.id_акции_на_блюда)

            SELECT
                *
              , sum(цена_со_скидкой) OVER (PARTITION BY заказ) AS сумма_заказа

            FROM блюда_заказов_с_джойнами
            ORDER BY заказ, id_блюда_заказа, id_блюда;


        -- View #4
        -- Info about payments of bills
        CREATE OR REPLACE VIEW ve_платежи_по_счетам AS
            WITH
                платежи_с_джойнами AS (
                    SELECT
                        с.id_счёта                              AS счёт
                      , с.заказ
                      , с.сумма_счёта
                      , с.сумма_чаевых
                      , с.счёт_оплачен

                      , п.id_платежа                            AS платёж
                      , п.время_платежа
                      , п.вид_платежа
                      , CASE
                            WHEN п.сумма_платежа IS NULL THEN 0
                            ELSE п.сумма_платежа
                        END                                     AS сумма_платежа

                    FROM      счёт   AS с
                    LEFT JOIN платёж AS п ON с.id_счёта = п.счёт)

              , платежи_с_суммой AS (
                    SELECT
                        *
                      , sum(сумма_платежа) OVER (PARTITION BY счёт) AS сумма_платежей

                    FROM платежи_с_джойнами)

            SELECT
                *
              , CASE
                    WHEN сумма_счёта > сумма_платежей
                        THEN сумма_счёта - сумма_платежей
                    ELSE 0
                END AS долг

            FROM платежи_с_суммой
            ORDER BY счёт, время_платежа;


        -- View #5
        --
        CREATE OR REPLACE VIEW ve_запись_скуд_с_параметрами AS
            SELECT

                зс.*
              , зс.время_записи_скуд::date                                  AS дата
              , зс.время_записи_скуд::time                                  AS время
              , extract(DOW FROM зс.время_записи_скуд)                      AS день_недели
              , сч.имя_считывателя
              , с.id_сотрудника
              , гр.начало_рабочего_времени
              , гр.конец_рабочего_времени

              , extract(DOW FROM зс.время_записи_скуд) > 0
                AND
                extract(DOW FROM зс.время_записи_скуд) < 6                   AS рабочий_день

              , (сч.имя_считывателя = 'Вход' AND зс.действие_скуд = 1)
                 AND
                 гр.начало_рабочего_времени < зс.время_записи_скуд::time
                 AND
                 зс.время_записи_скуд::time < гр.конец_рабочего_времени      AS вход_с_опозданием

              , (сч.имя_считывателя = 'Выход' AND зс.действие_скуд = 1)
                 AND
                 гр.начало_рабочего_времени < зс.время_записи_скуд::time
                 AND
                 зс.время_записи_скуд::time < гр.конец_рабочего_времени      AS выход_раньше_времени

            FROM      запись_скуд             AS зс
            LEFT JOIN считыватель             AS сч ON зс.считыватель      = сч.id_считывателя
            LEFT JOIN ключ_карта_сотрудника   AS кс ON зс.ключ_карта       = кс.ключ_карта  
            LEFT JOIN сотрудник               AS с  ON кс.сотрудник        = с.id_сотрудника
            LEFT JOIN график_рабочего_времени AS гр ON с.график_сотрудника = гр.id_графика;


        -- View #6
        --
        CREATE OR REPLACE VIEW ve_запись_скуд_нарушения AS
            WITH
                зс_с_нарушениями AS ( --EXPLAIN ANALYSE
                    SELECT
                        id_записи_скуд
                      , id_сотрудника
                      , дата
                      , рабочий_день

                      , время
                      , lag(время)  OVER w                                     AS пред_время
                      , lead(время) OVER w                                     AS след_время


                      , имя_считывателя
                      , lag(имя_считывателя ) OVER w                           AS пред_имя_считывателя
                      , lead(имя_считывателя) OVER w                           AS след_имя_считывателя

                      , lag(имя_считывателя) OVER w = 'Вход'                   AS пред_вход
                      , lag(имя_считывателя) OVER w = 'Выход'                  AS пред_выход

                      , lead(имя_считывателя) over w = 'Вход'                  AS след_вход
                      , lead(имя_считывателя) over w = 'Выход'                 AS след_выход

                      , начало_рабочего_времени
                      , конец_рабочего_времени


                      , имя_считывателя = 'Выход'
                        AND
                        lag(имя_считывателя) OVER w = 'Выход'                  AS не_отмечен_вход

                      , имя_считывателя = 'Вход'
                        AND
                        lag(имя_считывателя) OVER w = 'Вход'                   AS не_отмечен_выход

                      , имя_считывателя = 'Выход'
                        AND
                        lag(имя_считывателя) OVER w IS NULL                    AS не_отмечен_первый_вход

                      , имя_считывателя = 'Вход'
                        AND
                        lead(имя_считывателя) OVER w IS NULL                   AS не_отмечен_последний_выход


                      , имя_считывателя = lag(имя_считывателя ) OVER w         AS повтор_пред_направления

                      , имя_считывателя = lead(имя_считывателя) OVER w         AS повтор_след_направления

                      , имя_считывателя = lag(имя_считывателя ) OVER w
                        OR
                        имя_считывателя = lead(имя_считывателя) OVER w         AS повтор_соседнего_направления


                      , имя_считывателя = 'Вход'
                        AND
                        lead(имя_считывателя) OVER w = 'Вход'                  AS след_повтор_входа

                      , имя_считывателя = 'Выход'
                        AND
                        lag(имя_считывателя) OVER w = 'Выход'                  AS пред_повтор_выхода


                      , время <= начало_рабочего_времени                       AS до_графика

                      , время < конец_рабочего_времени                         AS до_конца_графика

                      , начало_рабочего_времени < время
                        AND
                        время < конец_рабочего_времени                         AS внутри_графика

                      , начало_рабочего_времени < время                        AS после_начала_графика

                      , конец_рабочего_времени <= время                        AS после_графика


                      , lag(имя_считывателя ) OVER w IS NULL                   AS раньше_нет
                      , lead(имя_считывателя) OVER w IS NULL                   AS дальше_нет


                      , имя_считывателя = 'Вход'
                        AND
                        время <= начало_рабочего_времени                       AS вход_до_графика

                      , имя_считывателя = 'Выход'
                        AND
                        время <= начало_рабочего_времени                       AS выход_до_графика


                      , имя_считывателя = 'Вход'
                        AND
                        конец_рабочего_времени <= время                        AS вход_после_графика

                      , имя_считывателя = 'Выход'
                        AND
                        конец_рабочего_времени <= время                        AS выход_после_графика


                      , lag(имя_считывателя) OVER w = 'Вход'
                        AND
                        lag(время) OVER w <= начало_рабочего_времени           AS пред_вход_до_графика

                      , lag(имя_считывателя) OVER w = 'Выход'
                        AND
                        lag(время) OVER w <= начало_рабочего_времени           AS пред_выход_до_графика



                      , lead(имя_считывателя) OVER w = 'Вход'
                        AND
                        конец_рабочего_времени <= lead(время) OVER w           AS след_вход_после_графика

                      , lead(имя_считывателя) OVER w = 'Выход'
                        AND
                        конец_рабочего_времени <= lead(время) OVER w           AS след_выход_после_графика


                      , (имя_считывателя = 'Вход'
                         AND
                         начало_рабочего_времени < время
                         AND
                         время < конец_рабочего_времени)                        AS вход_внутри_графика

                      , (имя_считывателя = 'Выход'
                         AND
                         начало_рабочего_времени < время
                         AND
                         время < конец_рабочего_времени)                        AS выход_внутри_графика


                      , начало_рабочего_времени < lead(время) OVER w           AS след_вр_после_начала_графика
                      , lag(время) OVER w < конец_рабочего_времени             AS пред_вр_до_конца_графика

                    FROM ve_запись_скуд_с_параметрами
                    WHERE действие_скуд = 1 -- Ignore access denied cases (consider only successful in/out events)
                    WINDOW w AS (PARTITION BY id_сотрудника, дата ORDER BY время))

              , зс_статусы_присутствия AS (
                    SELECT DISTINCT
                        id_сотрудника
                      , дата
                      , рабочий_день
                      , время

                      , CASE
                            WHEN (вход_внутри_графика  AND след_выход)
                                  OR
                                 (выход_внутри_графика AND пред_вход ) THEN TRUE
                            ELSE FALSE
                        END                                                                     AS частичное_присутствие
                      , CASE
                            WHEN (вход_внутри_графика  AND (пред_выход OR раньше_нет))
                                  OR
                                 (выход_внутри_графика AND (след_вход  OR дальше_нет)) THEN TRUE
                            ELSE FALSE
                        END                                                                     AS частичное_отсутствие
                      , CASE
                            WHEN (не_отмечен_первый_вход     AND после_начала_графика)
                                  OR
                                 (не_отмечен_последний_выход AND до_конца_графика    )
                                  OR
                                 (повтор_след_направления AND до_графика    AND след_вр_после_начала_графика)
                                  OR
                                 (повтор_пред_направления AND после_графика AND пред_вр_до_конца_графика    )
                                  OR
                                 (повтор_соседнего_направления AND внутри_графика) THEN TRUE
                            ELSE FALSE
                        END                                                                     AS неопределённость_рв
                      , CASE
                            WHEN (вход_до_графика     AND след_выход_после_графика)
                                  OR
                                 (выход_после_графика AND пред_вход_до_графика    ) THEN TRUE
                            ELSE FALSE
                        END                                                                     AS явка

                    FROM зс_с_нарушениями)

              , присутствие_в_датах AS (
                    SELECT DISTINCT
                        id_сотрудника
                      , дата
                      , рабочий_день
                      , max(частичное_присутствие::int) OVER w = 1 AS част_присутствие_в_дате
                      , max(частичное_отсутствие::int ) OVER w = 1 AS част_отсутствие_в_дате
                      , max(неопределённость_рв::int  ) OVER w = 1 AS неопр_рв_в_дате
                      , max(явка::int                 ) OVER w = 1 AS явка_в_дате

                    FROM зс_статусы_присутствия
                    WINDOW w AS (PARTITION BY id_сотрудника, дата))

              , статусы_явки AS (
                    SELECT DISTINCT
                        id_сотрудника                 AS сотрудник
                      , дата
                      , NOT рабочий_день              AS В
                      , явка_в_дате                   AS Я

                      , (NOT явка_в_дате)
                         AND
                        (NOT част_присутствие_в_дате)
                         AND
                        (NOT част_отсутствие_в_дате)
                         AND
                        (NOT неопр_рв_в_дате)         AS ПР

                      ,  част_присутствие_в_дате
                         AND
                         част_отсутствие_в_дате
                         AND
                        (NOT неопр_рв_в_дате)         AS Я_ПР

                      , (NOT част_присутствие_в_дате)
                         AND
                        (NOT част_отсутствие_в_дате)
                         AND
                         неопр_рв_в_дате              AS НН

                      ,  част_присутствие_в_дате
                         AND
                        (NOT част_отсутствие_в_дате)
                         AND
                         неопр_рв_в_дате              AS Я_НН

                      , (NOT част_присутствие_в_дате)
                         AND
                         част_отсутствие_в_дате
                         AND
                         неопр_рв_в_дате              AS ПР_НН

                      , част_присутствие_в_дате
                        AND
                        част_отсутствие_в_дате
                        AND
                        неопр_рв_в_дате               AS Я_ПР_НН

                    FROM присутствие_в_датах)

              , нарушения_2 AS (
                    SELECT DISTINCT
                        id_сотрудника AS сотрудник
                      , дата
                      , время

                    FROM зс_с_нарушениями
                    WHERE не_отмечен_последний_выход)

        SELECT DISTINCT
                зссн.*

              , CASE
                    WHEN ся.В       THEN 'В (Выходной день)'
                    WHEN ся.Я       THEN 'Я (Присутствие полный рабочий день)'
                    WHEN ся.ПР      THEN 'ПР (Отсутствие полный рабочий день)'
                    WHEN ся.Я_ПР    THEN 'Я/ПР (Частичное присутствие и частичное отсутствие)'
                    WHEN ся.Я_ПР_НН THEN 'Я/ПР/НН (Частичное присутствие, частичное отсутствие и неопределённый статус)'
                    WHEN ся.НН      THEN 'НН (Неопределённый статус)'
                    WHEN ся.Я_НН    THEN 'Я/НН (Частичное присутствие и неопределённый статус)'
                    WHEN ся.ПР_НН   THEN 'ПР/НН (Частичное отсутствие и неопределённый статус)'
                    ELSE 'Неизвестный статус!'
                END                                                     AS статус_явки

              , CASE
                    WHEN зссн.не_отмечен_первый_вход THEN 3
                    WHEN зссн.не_отмечен_вход        THEN 5
                    WHEN зссн.не_отмечен_выход       THEN 6
                END                                                     AS нарушение_1

              , CASE
                    WHEN зссн.повтор_соседнего_направления THEN to_char(зссн.пред_время, 'HH24:MI') || '-' || to_char(зссн.время, 'HH24:MI')
                    WHEN зссн.не_отмечен_первый_вход       THEN '00:00-' || to_char(зссн.время, 'HH24:MI')
                END                                                     AS время_нарушения_1

              , CASE
                    WHEN зссн.не_отмечен_последний_выход THEN 4
                END                                                     AS нарушение_2

              ,CASE
                    WHEN зссн.не_отмечен_последний_выход THEN to_char(зссн.время, 'HH24:MI') || '-23:59'
                END                                                     AS время_нарушения_2

              , н2.дата IS NOT NULL                                     AS в_дате_не_отм_посл_вых
              , н2.время                                                AS время_наруш_2_в_дате

        FROM      зс_с_нарушениями AS зссн
        LEFT JOIN статусы_явки     AS ся   ON зссн.id_сотрудника = ся.сотрудник
                                           AND
                                           зссн.дата             = ся.дата
        LEFT JOIN нарушения_2      AS н2   ON зссн.id_сотрудника = н2.сотрудник
                                           AND
                                           зссн.дата             = н2.дата
        ORDER BY id_сотрудника, дата, время;


        -- View #7
        --
        CREATE OR REPLACE VIEW ve_зс_расчёт_рв AS
            WITH
                неопределённость AS (
                    SELECT
                        id_записи_скуд

                      , след_повтор_входа
                        OR
                        пред_повтор_выхода
                        OR
                        не_отмечен_первый_вход
                        OR
                        не_отмечен_последний_выход AS край_неопр_интервала

                    FROM ve_запись_скуд_нарушения)

              , зс_для_расчёта AS (
                    SELECT
                        зсн.id_записи_скуд
                      , зсн.id_сотрудника    AS сотрудник
                      , зсн.дата
                      , CASE
                            WHEN край_неопр_интервала THEN '00:00'
                            ELSE CASE
                                     WHEN вход_до_графика      THEN (-начало_рабочего_времени)::interval
                                     WHEN выход_до_графика     THEN ( начало_рабочего_времени)::interval
                                     WHEN вход_внутри_графика  THEN (-время                  )::interval
                                     WHEN выход_внутри_графика THEN ( время                  )::interval

                                     WHEN вход_после_графика   THEN (-конец_рабочего_времени )::interval
                                     WHEN выход_после_графика  THEN ( конец_рабочего_времени )::interval

                                     ELSE '00:00'::interval
                                 END
                        END                  AS для_расчёта_рв
                    FROM ve_запись_скуд_нарушения AS зсн
                    LEFT JOIN неопределённость    AS н    ON зсн.id_записи_скуд = н.id_записи_скуд
                    WHERE рабочий_день)

            SELECT
                сотрудник
              , дата
              , sum(для_расчёта_рв) AS рв_в_дате

            FROM зс_для_расчёта
            GROUP BY сотрудник, дата;


        -- View #8
        --
        CREATE OR REPLACE VIEW ve_диаграмма_скуд AS
            WITH
                имя AS (
                    SELECT
                        id_сотрудника                   AS id
                      , concat_ws(  ' '
                                  , имя_сотрудника
                                  , отчество_сотрудника
                                  , фамилия_сотрудника) AS полное_имя

                    FROM сотрудник)

              , дата_года AS (
                    SELECT
                        ts::date AS дата
                    FROM generate_series(  CURRENT_TIMESTAMP - interval '1 YEAR'
                                         , CURRENT_TIMESTAMP
                                         , '1 DAY') AS ts)
              , строка_даты AS (
                    SELECT
                        дата
                      , concat_ws(  ' '
                                  , to_char(дата, 'DD')::int
                                  , CASE to_char(дата, 'MM')
                                        WHEN '01' THEN 'января'
                                        WHEN '02' THEN 'февраля'
                                        WHEN '03' THEN 'марта'
                                        WHEN '04' THEN 'апреля'
                                        WHEN '05' THEN 'мая'
                                        WHEN '06' THEN 'июня'
                                        WHEN '07' THEN 'июля'
                                        WHEN '08' THEN 'августа'
                                        WHEN '09' THEN 'сентября'
                                        WHEN '10' THEN 'октября'
                                        WHEN '11' THEN 'ноября'
                                        WHEN '12' THEN 'декабря'
                                    END
                                  , to_char(дата, 'YYYY года')
                                 ) AS дата_словами

                    FROM дата_года)

              , сотрудник_с_датами AS (
                    SELECT
                        с.id_сотрудника AS сотрудник
                      , дг.дата

                    FROM       сотрудник AS с
                    CROSS JOIN дата_года AS дг
                    ORDER BY дата, сотрудник)

              , статус_присутствия AS (
                   SELECT DISTINCT
                       ссд.сотрудник
                     , ссд.дата
                     , CASE
                           WHEN зсн.дата IS NULL
                               THEN CASE
                                        WHEN extract(DOW FROM ссд.дата) = 0
                                             OR
                                             extract(DOW FROM ссд.дата) = 6
                                            THEN 'В (Выходной день)'
                                        ELSE     'ПР (Отсутствие полный рабочий день)'
                                    END
                           ELSE зсн.статус_явки
                       END AS статус_явки

                   FROM      сотрудник_с_датами       AS ссд
                   LEFT JOIN ve_запись_скуд_нарушения AS зсн ON зсн.id_сотрудника = ссд.сотрудник
                                                                AND
                                                                зсн.дата = ссд.дата)

              , времена_по_шкале AS (
                    SELECT distinct
                        id_записи_скуд                                                                                     AS запись_скуд
                      , date_trunc('hour', время     ) + interval '10 min' * round(date_part('minute', время     ) / 10.0) AS время_по_шкале
                      , date_trunc('hour', пред_время) + interval '10 min' * round(date_part('minute', пред_время) / 10.0) AS пред_время_по_шкале
                      , date_trunc('hour', след_время) + interval '10 min' * round(date_part('minute', след_время) / 10.0) AS след_время_по_шкале

                    FROM ve_запись_скуд_нарушения)

              , куски_временной_оси AS (
                    SELECT DISTINCT
                        id_записи_скуд         AS запись_скуд
                      , id_сотрудника          AS сотрудник
                      , дата
                      , время
                      , CASE
                            WHEN нарушение_1 IS NOT NULL
                                THEN repeat('▓', (6 * extract(HOUR FROM время_по_шкале - coalesce(пред_время_по_шкале, '00:00')) + 0.1 * extract(MINUTE FROM время_по_шкале - coalesce(пред_время_по_шкале, '00:00')))::int)
                            WHEN имя_считывателя = 'Выход'
                                THEN repeat('▬', (6 * extract(HOUR FROM время_по_шкале - пред_время_по_шкале                   ) + 0.1 * extract(MINUTE FROM время_по_шкале - пред_время_по_шкале                   ))::int)
                            ELSE     repeat('─', (6 * extract(HOUR FROM время_по_шкале - coalesce(пред_время_по_шкале, '00:00')) + 0.1 * extract(MINUTE FROM время_по_шкале - coalesce(пред_время_по_шкале, '00:00')))::int)
                        END || CASE
                                   WHEN дальше_нет
                                       THEN CASE
                                                WHEN в_дате_не_отм_посл_вых
                                                    THEN repeat('▓', (6 * extract(HOUR FROM '24:00' - время_по_шкале) + 0.1 * extract(MINUTE FROM '24:00' - время_по_шкале))::int)
                                                ELSE     repeat('─', (6 * extract(HOUR FROM '24:00' - время_по_шкале) + 0.1 * extract(MINUTE FROM '24:00' - время_по_шкале))::int)
                                            END
                                   ELSE ''
                               END             AS кусок_оси

                    FROM ve_запись_скуд_нарушения AS зсн
                    LEFT JOIN времена_по_шкале    AS впш ON впш.запись_скуд = зсн.id_записи_скуд)

              , временные_оси AS (
                    SELECT DISTINCT
                        сотрудник
                      , дата
                      , string_agg(кусок_оси, '' ORDER BY время) AS временная_ось

                    FROM куски_временной_оси
                    GROUP BY сотрудник, дата)

              , графики_по_шкале AS (
                    SELECT DISTINCT
                        с.id_сотрудника AS сотрудник
                      , date_trunc('HOUR', грв.начало_рабочего_времени) + interval '10 MINUTES' * round(date_part('MINUTE', грв.начало_рабочего_времени) / 10.0) AS начало_рв_по_шкале
                      , date_trunc('HOUR', грв.конец_рабочего_времени ) + interval '10 MINUTES' * round(date_part('MINUTE', грв.конец_рабочего_времени ) / 10.0) AS конец_рв_по_шкале

                    FROM      сотрудник               AS с
                    LEFT JOIN график_рабочего_времени AS грв ON грв.id_графика = с.график_сотрудника)

              , интервалы_рв_по_шкале AS (
                    SELECT
                        сотрудник

                      , repeat(' ', (6 * extract(HOUR FROM начало_рв_по_шкале - '00:00') + 0.1 * extract(MINUTE FROM начало_рв_по_шкале - '00:00'))::int) ||
                        '▏◀' || repeat('-', (6 * extract(HOUR FROM конец_рв_по_шкале - начало_рв_по_шкале) + 0.1 * extract(MINUTE FROM конец_рв_по_шкале - начало_рв_по_шкале))::int - 4) || '▶ ▏' AS интервал_рв

                      , repeat(' ', (3 * extract(HOUR FROM начало_рв_по_шкале + конец_рв_по_шкале) + 0.05 * extract(MINUTE FROM начало_рв_по_шкале + конец_рв_по_шкале))::int - length('Рабочее время по графику')/2) ||
                       'Рабочее время по графику'                                                                                                                                                  AS заголовок_интервала_рв

                    FROM графики_по_шкале)

              , отработанные_часы AS (
                    SELECT
                        зсн.id_сотрудника AS сотрудник
                      , зсн.дата
                      , coalesce(extract(HOUR FROM зсрв.рв_в_дате) + extract(MINUTE FROM зсрв.рв_в_дате) / 60.0, 0.00)::numeric(5, 2) AS часов_отработано

                    FROM ve_запись_скуд_нарушения AS зсн
                    LEFT JOIN ve_зс_расчёт_рв     AS зсрв ON зсрв.сотрудник = зсн.id_сотрудника
                                                             AND
                                                             зсрв.дата      = зсн.дата)

              , часы_по_графику AS (
                    SELECT
                        с.id_сотрудника AS сотрудник
                      , (extract(HOUR   FROM грв.конец_рабочего_времени - грв.начало_рабочего_времени)
                        +
                         extract(MINUTE FROM грв.конец_рабочего_времени - грв.начало_рабочего_времени) / 60.0)::numeric(5, 2) AS часов_по_графику

                    FROM сотрудник AS с
                    LEFT JOIN график_рабочего_времени AS грв ON грв.id_графика = с.график_сотрудника)

              , отработанные_проценты AS (
                    SELECT
                        оч.сотрудник
                      , оч.дата
                      , (100 * оч.часов_отработано / чпг.часов_по_графику)::int AS процентов_отработано

                    FROM    отработанные_часы AS оч
                    LEFT JOIN часы_по_графику AS чпг ON чпг.сотрудник = оч.сотрудник)

              , нарушения_графика AS ( -- Schedule violations from violations log
                    SELECT
                        жн.нарушитель
                      , жн.дата_нарушения
                      , string_agg(concat_ws(' ', ' ', жн.время_нарушения, н.имя_нарушения), E'\n' ORDER BY жн.время_нарушения ) AS список_нарушений
                    FROM журнал_нарушений AS жн
                    LEFT JOIN нарушение   AS н  ON н.id_нарушения = жн.нарушение
                    WHERE н.id_нарушения <> 10  ---> Full absence violation can be only one for a date.
                                                ---> Do not look here at full absence violations! BECAUSE: These violations are not checked and written into violations log
                                                ---> directly at the moment of entering/exiting BUT on filling the working time log event SO the records with them could be not actual.
                    GROUP BY жн.нарушитель, жн.дата_нарушения, н.вид_нарушения
                    HAVING н.вид_нарушения = 1) ---> Look only at schedule time violations


              , нарушения_скуд AS ( -- Access control system violations from violations log
                    SELECT
                        жн.нарушитель
                      , жн.дата_нарушения
                      , string_agg(concat_ws(' ', ' ', жн.время_нарушения, н.имя_нарушения), E'\n' ORDER BY жн.время_нарушения ) AS список_нарушений

                    FROM журнал_нарушений AS жн
                    LEFT JOIN нарушение   AS н  ON жн.нарушение = н.id_нарушения
                    WHERE н.id_нарушения <> 4 ---> Unregistered last exit violation can be only one for a date.
                                              ---> Do not look here at unregistered last exit violations! BECAUSE: These violations are not checked and written into violations log
                                              ---> directly at the moment of entering/exiting BUT on filling the working time log event SO the records with them could be not actual.
                    GROUP BY жн.нарушитель, жн.дата_нарушения, н.вид_нарушения
                    HAVING н.вид_нарушения = 2) ---> Look only at access control system violations

              , все_нарушения AS (
                    SELECT DISTINCT
                        ссд.сотрудник                                                                                   AS нарушитель
                      , ссд.дата                                                                                        AS дата_нарушения

                      , E'  Нарушения графика: ' || CASE
                                                        WHEN сп.статус_явки LIKE 'В %'
                                                             OR
                                                            (нг.список_нарушений IS NULL AND сп.статус_явки NOT LIKE 'ПР %')
                                                            THEN 'не выявлены'
                                                        ELSE E'\n\n'
                                                    END ||

                        coalesce(нг.список_нарушений || E'\n', '') ||

                        CASE
                            WHEN сп.статус_явки LIKE 'ПР %' ---> Check actual full absence violation looking in the current access control system records
                                THEN to_char(грв.начало_рабочего_времени, '  HH24:MI-') || to_char(грв.конец_рабочего_времени, E'HH24:MI Прогул!\n\n\n')
                            ELSE E'\n\n'
                        END ||

                        E'  Нарушения правил СКУД: ' || CASE
                                                            WHEN coalesce(нс.список_нарушений IS NULL AND NOT зсн.в_дате_не_отм_посл_вых, TRUE)
                                                                THEN 'не выявлены'
                                                            ELSE E'\n\n'
                                                        END ||

                        coalesce(нс.список_нарушений || E'\n', '') ||

                        -- Check actual unregistered last exit violation looking in the current access control system records
                        coalesce(to_char(зсн.время_наруш_2_в_дате, E'  HH24:MI-23:59 Не отмечен последний выход!'), '') AS список_всех_нарушений

                    FROM сотрудник_с_датами            AS ссд
                    LEFT JOIN статус_присутствия       AS сп  ON сп.сотрудник      = ссд.сотрудник
                                                                 AND
                                                                 сп.дата           = ссд.дата
                    LEFT JOIN сотрудник                AS с   ON с.id_сотрудника   = ссд.сотрудник
                    LEFT JOIN график_рабочего_времени  AS грв ON грв.id_графика    = с.график_сотрудника
                    LEFT JOIN ve_запись_скуд_нарушения AS зсн ON зсн.id_сотрудника = с.id_сотрудника
                                                                 AND
                                                                 зсн.дата          = ссд.дата
                    LEFT JOIN нарушения_графика        AS нг  ON нг.нарушитель     = с.id_сотрудника
                                                                 AND
                                                                 нг.дата_нарушения = ссд.дата
                    LEFT JOIN нарушения_скуд           AS нс  ON нс.нарушитель     = с.id_сотрудника
                                                                 AND
                                                                 нс.дата_нарушения = ссд.дата)

            SELECT DISTINCT
                ссд.сотрудник
              , ссд.дата

              , E'░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░\n\n\n' ||
                repeat(' ', 75 - length('ДАННЫЕ СИСТЕМЫ КОНТРОЛЯ ДОСТУПА') / 2) || E'ДАННЫЕ СИСТЕМЫ КОНТРОЛЯ ДОСТУПА\n\n' ||
                repeat(' ', 75 - length('за ' || сд.дата_словами) / 2) || 'за ' || сд.дата_словами || E'\n\n\n\n' ||
                E'  Сотрудник: ' || и.полное_имя || ' (' || lower(д.имя_должности) || E')\n\n\n' ||
                E'  Статус явки: ' || сп.статус_явки || E'\n\n' ||
                CASE
                    WHEN сп.статус_явки LIKE 'В %'
                        THEN E'\n'
                    ELSE E'  Всего отработано часов: ' || coalesce(оч.часов_отработано, 0.00) || ' из ' || чпг.часов_по_графику || E' (' || coalesce(оп.процентов_отработано, 0) || E'% рабочего времени)\n\n\n'
                END ||
                вн.список_всех_нарушений || E'\n\n\n\n\n\n' ||
                CASE
                    WHEN сп.статус_явки LIKE 'В %'
                        THEN ''
                    ELSE E'   ' || ипш.заголовок_интервала_рв || E'\n' ||
                         E'   ' || ипш.интервал_рв || E'\n'
                END ||
                E'  ─' || coalesce(во.временная_ось, repeat('─', 144)) || E'──▶ часы    \n\n' ||
                E'   ▏     ▏     ▏     ▏     ▏     ▏     ▏     ▏     ▏     ▏     ▏     ▏     ▏     ▏     ▏     ▏     ▏     ▏     ▏     ▏     ▏     ▏     ▏     ▏     ▏  \n\n' ||
                E'  0     1     2     3     4     5     6     7     8     9     10    11    12    13    14    15    16    17    18    19    20    21    22    23    24\n\n\n\n\n' ||
                E'  ▬▬▬▬ - Время присутствия\n\n' ||
                E'  ▓▓▓▓ - Неопределённое время присутствия из-за нарушения требований по использованию бесконтактных ключ-карт (не отмечен вход/выход)\n\n\n\n\n\n\n\n' ||
                E'                                                                © 2022 Ярослав Козлов\n\n' ||
                E'░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░\n'  AS диаграмма

            FROM сотрудник_с_датами            AS ссд
            LEFT JOIN сотрудник                AS с   ON с.id_сотрудника   = ссд.сотрудник
            LEFT JOIN имя                      AS и   ON и.id              = с.id_сотрудника
            LEFT JOIN должность                AS д   ON д.id_должности    = с.должность_сотрудника
            LEFT JOIN строка_даты              AS сд  ON сд.дата           = ссд.дата
            LEFT JOIN статус_присутствия       AS сп  ON сп.сотрудник      = с.id_сотрудника
                                                         AND
                                                         сп.дата           = ссд.дата
            LEFT JOIN ve_запись_скуд_нарушения AS зсн ON зсн.id_сотрудника = с.id_сотрудника
                                                         AND
                                                         зсн.дата          = ссд.дата
            LEFT JOIN куски_временной_оси      AS кво ON кво.запись_скуд   = зсн.id_записи_скуд
            LEFT JOIN временные_оси            AS во  ON во.сотрудник      = с.id_сотрудника
                                                         AND
                                                         во.дата           = ссд.дата
            LEFT JOIN интервалы_рв_по_шкале    AS ипш ON ипш.сотрудник     = с.id_сотрудника
            LEFT JOIN часы_по_графику          AS чпг ON чпг.сотрудник     = с.id_сотрудника
            LEFT JOIN отработанные_часы        AS оч  ON оч.сотрудник      = с.id_сотрудника
                                                         AND
                                                         оч.дата           = ссд.дата
            LEFT JOIN отработанные_проценты    AS оп  ON оп.сотрудник      = с.id_сотрудника
                                                         AND
                                                         оп.дата           = ссд.дата
            LEFT JOIN все_нарушения            AS вн  ON вн.нарушитель     = с.id_сотрудника
                                                         AND
                                                         вн.дата_нарушения = ссд.дата

            ORDER BY дата, сотрудник;


        -- View #9
        --
        CREATE OR REPLACE VIEW ve_выручка_за_день AS
            SELECT
                з.время_заказа::date                                             AS дата
              , з.сотрудник
              , з.id_заказа                                                      AS заказ
              , сч.сумма_счёта                                                   AS выручка_за_заказ
              , (sum(сч.сумма_счёта) OVER окно_сотрудника)::numeric(12, 2)       AS выручка_сотрудника_за_день
              , (avg(сч.сумма_счёта) OVER окно_сотрудника)::numeric(12, 2)       AS ср_выр_сотр_за_заказ
              , (sum(сч.сумма_счёта) OVER окно_всех_сотрудников)::numeric(12, 2) AS общая_выручка_за_день
              , (avg(сч.сумма_счёта) OVER окно_всех_сотрудников)::numeric(12, 2) AS ср_общ_выр_за_заказ

            FROM       заказ  AS з
            INNER JOIN счёт   AS сч ON сч.заказ = з.id_заказа
            WHERE з.статус_заказа = 3
            WINDOW  окно_сотрудника       AS (PARTITION BY з.время_заказа::date, з.сотрудник)
                  , окно_всех_сотрудников AS (PARTITION BY з.время_заказа::date)
            ORDER BY дата, сотрудник, заказ;


        -- View #10
        --
        CREATE OR REPLACE VIEW ve_выручка_нарастающим_итогом AS
            SELECT
                з.время_заказа::date                                                     AS дата
              , з.время_заказа::time                                                     AS время
              , з.сотрудник
              , сч.заказ
              , сч.сумма_счёта                                                           AS выручка_с_заказа

              , (sum(сч.сумма_счёта) OVER окно_сотр_рамка_нар_ит       )::numeric(12, 2) AS выр_сотр_нар_итог_всё_вр
              , (sum(сч.сумма_счёта) OVER окно_сотр_рамка_всё_окно     )::numeric(12, 2) AS выр_сотр_всё_вр

              , (sum(сч.сумма_счёта) OVER окно_сотр_дата_рамка_нар_ит  )::numeric(12, 2) AS выр_сотр_нар_итог_в_дате
              , (sum(сч.сумма_счёта) OVER окно_сотр_дата_рамка_всё_окно)::numeric(12, 2) AS выр_сотр_в_дате

              , (sum(сч.сумма_счёта) OVER общ_окно_рамка_нар_ит        )::numeric(12, 2) AS общ_выр_нар_итог_всё_вр
              , (sum(сч.сумма_счёта) OVER общ_окно_рамка_всё_окно      )::numeric(12, 2) AS общ_выр_всё_вр

              , (sum(сч.сумма_счёта) OVER общ_окно_дата_рамка_нар_ит   )::numeric(12, 2) AS общ_выр_нар_итог_в_дате
              , (sum(сч.сумма_счёта) OVER общ_окно_дата_рамка_всё_окно )::numeric(12, 2) AS общ_выр_в_дате

            FROM       заказ AS з
            INNER JOIN счёт  AS сч ON сч.заказ = з.id_заказа
            WHERE з.статус_заказа = 3

            -- Windows and frames to count the sum through:

            WINDOW окно_сотр_рамка_нар_ит        AS (PARTITION BY з.сотрудник
                                                     ORDER BY время_заказа
                                                     ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)

                 , окно_сотр_рамка_всё_окно      AS (PARTITION BY з.сотрудник
                                                     ORDER BY время_заказа
                                                     ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)

                 , окно_сотр_дата_рамка_нар_ит   AS (PARTITION BY з.сотрудник, з.время_заказа::date
                                                     ORDER BY время_заказа
                                                     ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)

                 , окно_сотр_дата_рамка_всё_окно AS (PARTITION BY з.сотрудник, з.время_заказа::date
                                                     ORDER BY время_заказа
                                                     ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)


                 , общ_окно_рамка_нар_ит         AS (ORDER BY время_заказа
                                                     ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)

                 , общ_окно_рамка_всё_окно       AS (ORDER BY время_заказа
                                                     ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)

                 , общ_окно_дата_рамка_нар_ит    AS (PARTITION BY з.время_заказа::date
                                                     ORDER BY время_заказа
                                                     ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)

                 , общ_окно_дата_рамка_всё_окно  AS (PARTITION BY з.время_заказа::date
                                                     ORDER BY время_заказа
                                                     ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)

            ORDER BY общ_выр_нар_итог_всё_вр;


        -- View #11
        --
        CREATE OR REPLACE VIEW ve_общ_выручка_нар_итог_всё_вр AS
            SELECT
                дата
              , время
              , заказ
              , выручка_с_заказа
              , общ_выр_нар_итог_всё_вр
              , общ_выр_всё_вр

            FROM ve_выручка_нарастающим_итогом
            GROUP BY дата, время, заказ, выручка_с_заказа, общ_выр_нар_итог_всё_вр, общ_выр_всё_вр
            ORDER BY общ_выр_нар_итог_всё_вр;


        -- View #12
        --
        CREATE OR REPLACE VIEW ve_общ_выручка_нар_итог_в_дате AS
            SELECT
                дата
              , время
              , заказ
              , выручка_с_заказа
              , общ_выр_нар_итог_в_дате
              , общ_выр_в_дате

            FROM ve_выручка_нарастающим_итогом
            GROUP BY дата, время, заказ, выручка_с_заказа, общ_выр_нар_итог_в_дате, общ_выр_в_дате
            ORDER BY общ_выр_нар_итог_в_дате;


        -- View #13
        --
        CREATE OR REPLACE VIEW ve_выручка_сотр_нар_итог_всё_вр AS
            SELECT
                дата
              , время
              , сотрудник
              , заказ
              , выручка_с_заказа
              , выр_сотр_нар_итог_всё_вр
              , выр_сотр_всё_вр

            FROM ve_выручка_нарастающим_итогом
            GROUP BY дата, время, сотрудник, заказ, выручка_с_заказа, выр_сотр_нар_итог_всё_вр, выр_сотр_всё_вр
            ORDER BY сотрудник, выр_сотр_нар_итог_всё_вр;


        -- View #14
        --
        CREATE OR REPLACE VIEW ve_выручка_сотр_нар_итог_в_дате AS
            SELECT
                дата
              , время
              , сотрудник
              , заказ
              , выручка_с_заказа
              , выр_сотр_нар_итог_в_дате
              , выр_сотр_в_дате

            FROM ve_выручка_нарастающим_итогом
            GROUP BY дата, время, сотрудник, заказ, выручка_с_заказа, выр_сотр_нар_итог_в_дате, выр_сотр_в_дате
            ORDER BY сотрудник, выр_сотр_нар_итог_в_дате;



    END view_block;



                -- [ I N D E X ] --


    RAISE NOTICE '- Создание индексов...';

    <<index_block>>
    BEGIN


            -- INDEX ON "запись_скуд" --


        CREATE INDEX IF NOT EXISTS idx_on_зс_1_время
            ON запись_скуд(время_записи_скуд);

        CREATE INDEX IF NOT EXISTS idx_on_зс_2_считыватель
            ON запись_скуд(считыватель);

        CREATE INDEX IF NOT EXISTS idx_on_зс_3_действие
            ON запись_скуд(действие_скуд);


            -- INDEX ON "сотрудник" --


        CREATE INDEX IF NOT EXISTS idx_on_сотрудник_1_иоф
            ON сотрудник(имя_сотрудника, отчество_сотрудника, фамилия_сотрудника);


            -- INDEX ON "график_рабочего_времени" --


        CREATE INDEX IF NOT EXISTS idx_on_график_рв_1
            ON график_рабочего_времени(начало_рабочего_времени);

        CREATE INDEX IF NOT EXISTS idx_on_график_рв_2
            ON график_рабочего_времени(начало_рабочего_времени DESC);

        CREATE INDEX IF NOT EXISTS idx_on_график_рв_3
            ON график_рабочего_времени(конец_рабочего_времени);

        CREATE INDEX IF NOT EXISTS idx_on_график_рв_4
            ON график_рабочего_времени(конец_рабочего_времени DESC);


            -- INDEX ON "журнал_нарушений" --


        CREATE INDEX IF NOT EXISTS idx_on_жн_1_нарушитель_дата
            ON журнал_нарушений(нарушитель, дата_нарушения);

        CREATE INDEX IF NOT EXISTS idx_on_жн_2_время
            ON журнал_нарушений(время_нарушения);


            -- INDEX ON "заказ" --


        CREATE INDEX IF NOT EXISTS idx_on_заказ_1_нач_ts
            ON заказ(время_заказа);

        CREATE INDEX IF NOT EXISTS idx_on_заказ_2_кон_ts
            ON заказ(время_освобождения_столика);

        CREATE INDEX IF NOT EXISTS idx_on_заказ_3_дата
            ON заказ((время_заказа::date));

        CREATE INDEX IF NOT EXISTS idx_on_заказ_4_дата_стол
            ON заказ((время_заказа::date), столик);

        CREATE INDEX IF NOT EXISTS idx_on_заказ_5_нач_t
            ON заказ((время_заказа::time));

        CREATE INDEX IF NOT EXISTS idx_on_заказ_6_сотр
            ON заказ(сотрудник);

        CREATE INDEX IF NOT EXISTS idx_on_заказ_7_статус
            ON заказ(статус_заказа);

        CREATE INDEX IF NOT EXISTS idx_on_заказ_8_дата_стол_нач_t
            ON заказ((время_заказа::date), столик, (время_заказа::time));


            -- INDEX ON "столик" --


        CREATE INDEX IF NOT EXISTS idx_on_столик_1_desc
            ON столик(id_столика DESC);



    END index_block;



                                -- [ R O L E ] --


    RAISE NOTICE '- Создание ролей...';


    <<user_block>>
    BEGIN

        <<delete_role>>
        DECLARE 

            есть_старая_роль    bool;
            один_сотрудник      record;

        BEGIN

            FOR один_сотрудник IN (SELECT
                                       *
                                   FROM сотрудник)
            LOOP

                есть_старая_роль = exists(SELECT 1 
                                          FROM pg_roles
                                          WHERE rolname = 'rst_user_' || один_сотрудник.id_сотрудника);

                -- Delete old user role if exists
                IF есть_старая_роль
                    THEN
                        -- Delete user role
                        EXECUTE 'DROP ROLE rst_user_' || один_сотрудник.id_сотрудника;
                END IF;

            END LOOP;


            есть_старая_роль = exists(SELECT 1
                                      FROM pg_roles
                                      WHERE rolname = 'rst_admins');

            -- Delete old admins group role if exists
            IF есть_старая_роль
                THEN
                    DROP ROLE rst_admins;
            END IF;


            есть_старая_роль = exists(SELECT 1
                                      FROM pg_roles
                                      WHERE rolname = 'rst_users');

            -- Delete old users group role if exists
            IF есть_старая_роль
                THEN
                    DROP ROLE rst_users;
            END IF;


            есть_старая_роль = exists(SELECT 1
                                      FROM pg_roles
                                      WHERE rolname = 'rst_viewers');

            -- Delete old viewers group role if exists
            IF есть_старая_роль
                THEN
                    DROP ROLE rst_viewers;
            END IF;

        END delete_role;



        <<create_role>>
        DECLARE

            один_сотрудник            record;
            запись                    record;
            должность_у_сотрудника    int;

        BEGIN

            -- Create group role #1 'rst_admins'
            CREATE ROLE rst_admins;

            -- Permissions of the group:

            GRANT ALL   ON ALL TABLES    IN SCHEMA ресторан TO rst_admins;
            GRANT ALL   ON ALL SEQUENCES IN SCHEMA ресторан TO rst_admins;
            GRANT ALL   ON ALL FUNCTIONS IN SCHEMA ресторан TO rst_admins;
            GRANT USAGE ON SCHEMA ресторан                  TO rst_admins;

            -- Grant ownership of the schema to enable creating and dropping its objects
            ALTER SCHEMA ресторан OWNER TO rst_admins;

            -- Grant ownership of all tables in schema "ресторан" to rst_admins;
            FOR запись IN (SELECT
                               *
                           FROM pg_tables
                           WHERE schemaname = 'ресторан')
            LOOP

                EXECUTE 'ALTER TABLE "' || запись.tablename ||'" OWNER TO rst_admins';

            END LOOP;


            -- Grant ownership of all sequences in schema "ресторан" to rst_admins;
            FOR запись IN (SELECT
                               *
                           FROM information_schema.sequences
                           WHERE sequence_schema = 'ресторан')
            LOOP

                EXECUTE 'ALTER SEQUENCE "' || запись.sequence_name ||'" OWNER TO rst_admins';

            END LOOP;


            -- Grant ownership of all views in schema "ресторан" to rst_admins;
            FOR запись IN (SELECT
                               *
                           FROM information_schema.views
                           WHERE table_schema = 'ресторан')
            LOOP

                EXECUTE 'ALTER VIEW "' || запись.table_name ||'" OWNER TO rst_admins';

            END LOOP;



            -- Create group role #2 'rst_users'
            CREATE ROLE rst_users;

            -- Permissions of the group:

            GRANT ALL ON ALL TABLES IN SCHEMA ресторан TO rst_users;


            -- Exclude some permissions on some tables:

            -- Access denied tables
            REVOKE ALL ON деньги_ресторана
                        , доход_либо_расход
                        , табель_учёта_рв
                        , оклад
                        , зарплата FROM rst_users;

            -- Only select/update table
            REVOKE INSERT
                 , DELETE
                 , TRUNCATE ON деньги_кассы FROM rst_users;

            -- Read only tables
            REVOKE INSERT
                 , UPDATE
                 , DELETE
                 , TRUNCATE ON акция_на_блюда
                             , акция_на_заказы
                             , блюдо
                             , блюдо_раздел
                             , вариант_меню
                             , вид_карты_скидок
                             , вид_нарушения
                             , вид_платежа
                             , график_рабочего_времени
                             , действие_скуд
                             , должность
                             , ключ_карта_скуд
                             , ключ_карта_сотрудника
                             , команда_сигнала
                             , нарушение
                             , раздел_меню
                             , блюдо_акция
                             , сотрудник
                             , статус_заказа
                             , считыватель FROM rst_users;


            GRANT ALL   ON ALL SEQUENCES IN SCHEMA ресторан TO rst_users;
            GRANT ALL   ON ALL FUNCTIONS IN SCHEMA ресторан TO rst_users;

            GRANT USAGE ON SCHEMA ресторан                  TO rst_users;


            -- Create group role #3 'rst_viewers'
            CREATE ROLE rst_viewers;

            -- Permissions of the group:

            -- Read only mode
            GRANT SELECT ON ALL TABLES    IN SCHEMA ресторан TO rst_viewers;

            GRANT ALL    ON ALL SEQUENCES IN SCHEMA ресторан TO rst_viewers;
            GRANT ALL    ON ALL FUNCTIONS IN SCHEMA ресторан TO rst_viewers;

            GRANT USAGE  ON SCHEMA ресторан                  TO rst_viewers;


            -- Create user role for each employee:

            FOR один_сотрудник IN (SELECT * FROM сотрудник)
            LOOP

                -- Create user role with password = id of the employee
                EXECUTE 'CREATE USER rst_user_' || один_сотрудник.id_сотрудника || ' WITH PASSWORD ''' || один_сотрудник.id_сотрудника || '''';


                -- Assign user name of the role to the employee
                UPDATE сотрудник
                SET имя_пользователя = 'rst_user_' || один_сотрудник.id_сотрудника
                WHERE id_сотрудника = один_сотрудник.id_сотрудника;


                -- Grant permissions to the user by job criteria:

                должность_у_сотрудника = (SELECT должность_сотрудника
                                          FROM сотрудник
                                          WHERE id_сотрудника = один_сотрудник.id_сотрудника);

                CASE

                    WHEN должность_у_сотрудника = 1 -- 'Управляющий'
                         OR
                         должность_у_сотрудника = 3 -- 'Бухгалтер'
                         OR
                         должность_у_сотрудника = 6 -- 'Технический специалист'
                         OR
                         должность_у_сотрудника = 7 -- 'Аналитик'


                        -- Give admins group role permissions to the user
                        THEN EXECUTE 'GRANT rst_admins TO rst_user_' || один_сотрудник.id_сотрудника;


                    WHEN должность_у_сотрудника = 4 -- 'Официант'
                         OR
                         должность_у_сотрудника = 5 -- 'Повар'

                        -- Give users group role permissions to the user
                        THEN EXECUTE 'GRANT rst_users TO rst_user_' || один_сотрудник.id_сотрудника;


                    WHEN должность_у_сотрудника = 2 -- 'Сотрудник службы безопасности'

                        -- Give viewers group role permissions to the user
                        THEN EXECUTE 'GRANT rst_viewers TO rst_user_' || один_сотрудник.id_сотрудника;


                    ELSE
                        -- Unknown job id
                        RAISE NOTICE E'\nНеизвестный id должности [1-7] --> %!\n', должность_у_сотрудника;

                 END CASE;

            END LOOP;

        END create_role;  

    END user_block;


END
$table_view_index_role$;



----------------------------------------❬ CREATING STORED PROCEDURES AND FUNCTIONS ❭---------------------------------------


\echo
\echo
\echo '    --❬ СОЗДАНИЕ ХРАНИМЫХ ПРОЦЕДУР И ФУНКЦИЙ ❭--'
\echo


                -- [ F U N C T I O N S ] --



-- Function #1
-- Was within a time range
CREATE OR REPLACE FUNCTION был_в_интервале(

    в_какую_дату       date
  , с_какого_времени   time
  , по_какое_время     time
  , кто                int          DEFAULT NULL

) RETURNS bool
LANGUAGE plpgsql
AS
$func$
DECLARE

    запись_до    record;

BEGIN

    WITH
        зс_сотрудника_в_дату AS (
            SELECT
                *
            FROM ve_запись_скуд_нарушения
            WHERE id_сотрудника = coalesce(кто, мой_id())
                  AND
                  дата          = в_какую_дату)
    SELECT
        *
    INTO запись_до
    FROM зс_сотрудника_в_дату
    WHERE время <= с_какого_времени
    ORDER BY время DESC
    LIMIT 1;

    RETURN CASE
               WHEN запись_до.имя_считывателя = 'Вход'
                    AND
                    запись_до.след_выход
                    AND
                    запись_до.след_время      >= по_какое_время
                   THEN TRUE
               ELSE FALSE
           END;

END
$func$;


-- Function #2
-- Employee worked time
CREATE OR REPLACE FUNCTION время_работы(

    какого_сотрудника    int
  , в_какую_дату        date

) RETURNS interval
LANGUAGE plpgsql
AS
$func$
BEGIN

    RETURN coalesce(
                      (SELECT
                           рв_в_дате
                       FROM ve_зс_расчёт_рв
                       WHERE сотрудник = какого_сотрудника
                             AND
                             дата      = в_какую_дату)

                    , '0:00'

                   );

END
$func$;


-- Function #3
-- Date by words
CREATE OR REPLACE FUNCTION дата_словами(

    дата    date

) RETURNS varchar
LANGUAGE plpgsql
AS
$func$
BEGIN

    RETURN concat_ws(  ' '
                     , to_char(дата, 'DD')::int
                     , CASE to_char(дата, 'MM')
                           WHEN '01' THEN 'января'
                           WHEN '02' THEN 'февраля'
                           WHEN '03' THEN 'марта'
                           WHEN '04' THEN 'апреля'
                           WHEN '05' THEN 'мая'
                           WHEN '06' THEN 'июня'
                           WHEN '07' THEN 'июля'
                           WHEN '08' THEN 'августа'
                           WHEN '09' THEN 'сентября'
                           WHEN '10' THEN 'октября'
                           WHEN '11' THEN 'ноября'
                           WHEN '12' THEN 'декабря'
                       END
                     , to_char(дата, 'YYYY года')
                    );

END
$func$;


-- Function #4
-- Number of days in the month
CREATE OR REPLACE FUNCTION дней_в_месяце(

    в_каком_месяце    int
  , какого_года       int

) RETURNS int
LANGUAGE plpgsql
AS
$func$
BEGIN

    RETURN extract(DAY FROM make_date(какого_года, в_каком_месяце, 1) + interval '1 MONTH' - interval '1 DAY');

END
$func$;


-- Function #5
-- Bill debt
CREATE OR REPLACE FUNCTION долг_по_счёту(

    какому_счёту    int

) RETURNS numeric(12, 2)
LANGUAGE plpgsql
AS
$func$
BEGIN

    IF exists(SELECT 1
              FROM счёт
              WHERE id_счёта = какому_счёту) 

        THEN RETURN (SELECT
                         долг
                     FROM ve_платежи_по_счетам
                     WHERE счёт = какому_счёту
                     LIMIT 1);

    ELSE     RETURN 0;

    END IF;

END
$func$;


-- Function #6
-- Job name of employee
CREATE OR REPLACE FUNCTION должность_сотрудника(

   какого_сотрудника    int

) RETURNS varchar
LANGUAGE plpgsql
AS
$func$
BEGIN

    RETURN (SELECT
                имя_должности
            FROM должность
            WHERE id_должности = (SELECT
                                      должность_сотрудника
                                  FROM сотрудник
                                  WHERE id_сотрудника = какого_сотрудника));

END
$func$;


-- Function #7
-- Random digit from 0 to 9 on the basis of current time
CREATE OR REPLACE FUNCTION единичный_разряд_микросекунд()
RETURNS int
LANGUAGE plpgsql
AS
$func$
BEGIN

    RETURN цифра_после_десятичной_запятой(extract(MICROSECONDS FROM CURRENT_TIME), 0);

END
$func$;


-- Function #8
-- Wages of employee for month
CREATE OR REPLACE FUNCTION зп_сотрудника(

    какого_сотрудника    int
  , за_какой_месяц       int
  , какого_года          int

) RETURNS numeric(12, 2)
LANGUAGE plpgsql
AS
$func$
BEGIN

    RETURN  coalesce(
                      (SELECT
                           зарплата_сотрудника
                       FROM зарплата
                       WHERE сотрудник      = какого_сотрудника
                             AND
                             месяц_зарплаты = за_какой_месяц
                             AND
                             год_зарплаты   = какого_года)

                     , 0

                    );

END
$func$;


-- Function #9
-- Month name by its order number
CREATE OR REPLACE FUNCTION месяц(

    m    int

) RETURNS varchar
LANGUAGE plpgsql
AS
$func$
DECLARE

    months  varchar[]  = '{  "Январь"
                           , "Февраль"
                           , "Март"
                           , "Апрель"
                           , "Май"
                           , "Июнь"
                           , "Июль"
                           , "Август"
                           , "Сентябрь"
                           , "Октябрь"
                           , "Ноябрь"
                           , "Декабрь"}';

BEGIN

  RETURN months[m];

END
$func$;


-- Function #10
-- My id: id of current user
CREATE OR REPLACE FUNCTION мой_id()
RETURNS int
LANGUAGE plpgsql
AS
$func$
BEGIN

    RETURN (SELECT
                id_сотрудника
            FROM сотрудник
            WHERE имя_пользователя = CURRENT_USER);

END
$func$;


-- Function #11
-- My name: name of current user
CREATE OR REPLACE FUNCTION моё_имя()
RETURNS varchar
LANGUAGE plpgsql
AS
$func$
BEGIN

    RETURN coalesce(полное_имя_сотрудника(мой_id()), CURRENT_USER);

END
$func$;


-- Function #12
-- Salary of employee
CREATE OR REPLACE FUNCTION оклад_сотрудника(

    какого_сотрудника    int

) RETURNS numeric(12, 2)
LANGUAGE plpgsql
AS
$func$
BEGIN

    RETURN (SELECT
                размер_оклада
            FROM оклад
            WHERE id_оклада = (SELECT
                                   оклад_сотрудника
                               FROM сотрудник
                               WHERE id_сотрудника = какого_сотрудника));

END
$func$;


-- Function #13
-- Full name of employee
CREATE OR REPLACE FUNCTION полное_имя_сотрудника(

    какого_сотрудника    int

) RETURNS varchar
LANGUAGE plpgsql
AS
$func$
DECLARE

    неизвестный    bool = NOT exists(SELECT 1
                                     FROM сотрудник
                                     WHERE id_сотрудника = какого_сотрудника);

BEGIN

    IF неизвестный
        THEN RETURN 'Неизвестный';
    END IF;

    RETURN concat_ws(
                       ' '

                     , (SELECT
                            имя_сотрудника
                        FROM сотрудник
                        WHERE id_сотрудника = какого_сотрудника)

                     , (SELECT
                            отчество_сотрудника
                        FROM сотрудник
                        WHERE id_сотрудника = какого_сотрудника)

                     , (SELECT
                            фамилия_сотрудника
                        FROM сотрудник
                        WHERE id_сотрудника = какого_сотрудника)

                    );

END
$func$;


-- Function #14
-- 
CREATE OR REPLACE FUNCTION про_функция_текстом(

    num         int
  , pro_nam     text
  , pro_typ     text
  , arg_nam     text[]
  , arg_typ     text[]
  , indent      int        DEFAULT 4
  , prefix      varchar    DEFAULT ''
  , lang        varchar    DEFAULT 'RU'

) RETURNS text
LANGUAGE plpgsql
AS
$func$
DECLARE
    descr              text = '';
    tab_0              constant varchar = repeat(' ', 4);
    tab_1              constant varchar = repeat(' ', 4 - 2);
    arg_len            constant int = array_length(arg_typ, 1);
    p_nam_len          constant int = char_length(pro_nam);
    pre_line           constant text = prefix || repeat(' ', indent);
    is_func            bool = (pro_typ IS NOT NULL);
    no_arg             bool = (arg_typ IS NULL);
    arg_typ_space      constant varchar = repeat(' ', 4);
    max_arg_nam_len    constant int = (SELECT
                                           max(char_length(a.a_nam))
                                       FROM unnest(arg_nam) AS a(a_nam));
BEGIN

    IF is_func
        THEN
            descr = concat(  pre_line
                           , CASE lang
                                 WHEN 'RU'
                                     THEN 'Функция #'
                                 ELSE     'Function #'
                             END
                           , num
                           , E'\n', prefix
                           , E'\n' );

    ELSE    descr = concat(  pre_line
                           , CASE lang
                                 WHEN 'RU'
                                     THEN 'Процедура #'
                                 ELSE     'Procedure #'
                             END
                           , num
                           , E'\n', prefix
                           , E'\n' );

    END IF;

    IF no_arg
        THEN
            RETURN concat(  descr
                          , pre_line, pro_nam, '()'
                          , CASE
                                WHEN is_func
                                    THEN '::' || pro_typ
                                ELSE ''
                            END );
    ELSIF arg_len = 1
        THEN
            RETURN concat(  descr
                          , pre_line, pro_nam, '('
                          , E'\n', prefix
                          , E'\n', pre_line, tab_0, arg_nam[1], arg_typ_space, arg_typ[1]
                          , E'\n', prefix
                          , E'\n', pre_line, ')'
                          , CASE
                                WHEN is_func
                                    THEN '::' || pro_typ
                                ELSE ''
                            END );
    ELSE
        descr = concat(  descr
                       , pre_line,  pro_nam, '('
                       , E'\n', prefix
                       , E'\n', pre_line, tab_0, format('%-*s', max_arg_nam_len, arg_nam[1]), arg_typ_space, arg_typ[1] );

        FOR i IN 2..arg_len
        LOOP

            descr = concat(  descr
                           , E'\n', pre_line, tab_1, ', ', format('%-*s', max_arg_nam_len, arg_nam[i]), arg_typ_space, arg_typ[i]);

        END LOOP;

        descr = concat(  descr
                       , E'\n', prefix
                       , E'\n', pre_line, ')'
                       , CASE
                             WHEN is_func
                                 THEN '::' ||  pro_typ
                             ELSE ''
                         END );

    END IF;

    RETURN descr;

END
$func$;


-- Function #15
-- Hours of employee for month: worked in fact and by schedule
CREATE OR REPLACE FUNCTION рабочее_время_за_месяц_по_табелю(

    какого_сотрудника    int
  , за_какой_месяц       int
  , какого_года          int

) RETURNS json
LANGUAGE plpgsql
AS
$func$
DECLARE

    статус_явки              varchar;
    запрос                   varchar;

    часов_отработано         numeric(5, 2);

    дней_по_графику_за_мес   int = 0;
    дней_отработано_за_мес   int = 0;

    часов_по_графику_за_мес  numeric(5, 2) = 0;
    часов_отработано_за_мес  numeric(5, 2) = 0;

BEGIN

    FOR число IN 1..дней_в_месяце(за_какой_месяц, какого_года)
    LOOP

        запрос = 'select "' || число || E'" ->> \'статус_явки\' ' ||
                 'from табель_учёта_рв ' ||
                 'where сотрудник = ' || какого_сотрудника || ' ' ||
                       'and ' ||
                       'месяц = ' || за_какой_месяц || ' ' ||
                       'and ' ||
                       'год = ' || какого_года;

        EXECUTE запрос INTO статус_явки;

        IF статус_явки <> 'В'

            THEN

                дней_по_графику_за_мес = дней_по_графику_за_мес + 1;

        END IF;

        IF статус_явки = 'Я'
           OR
           статус_явки = 'Я/ПР'

            THEN

                дней_отработано_за_мес = дней_отработано_за_мес + 1;

                запрос = 'select "' || число || E'" ->> \'часов_отработано\' ' ||
                         'from табель_учёта_рв ' ||
                         'where сотрудник = ' || какого_сотрудника || ' ' ||
                               'and ' ||
                               'месяц = ' || за_какой_месяц || ' ' ||
                               'and ' ||
                               'год = ' || какого_года;

                EXECUTE запрос INTO часов_отработано;

                часов_отработано_за_мес = часов_отработано_за_мес + coalesce(часов_отработано, 0);

        END IF;

    END LOOP;

    часов_по_графику_за_мес = дней_по_графику_за_мес * часов_в_графике_сотрудника(какого_сотрудника);

    RETURN (

            '{"часов_по_графику": ' || часов_по_графику_за_мес || ', ' ||
             '"часов_отработано": ' || часов_отработано_за_мес || ', ' ||
             '"дней_по_графику" : ' || дней_по_графику_за_мес  || ', ' ||
             '"дней_отработано" : ' || дней_отработано_за_мес  || '}'

           )::json;

END
$func$;


-- Function #16
-- Is working day
CREATE OR REPLACE FUNCTION рабочий_день(

    какой_день    date

) RETURNS bool
LANGUAGE plpgsql
AS
$func$
BEGIN

    RETURN (
             extract(DOW FROM какой_день) > 0
             AND
             extract(DOW FROM какой_день) < 6
           );

END
$func$;


-- Function #17
--
CREATE OR REPLACE FUNCTION растянуть_заголовок(

    строка    varchar

) RETURNS varchar
LANGUAGE plpgsql
AS
$func$
DECLARE

    temp    varchar = '';

BEGIN

    FOR i IN 1..char_length(строка)
    LOOP

        temp = temp || substr(строка, i, 1) || ' ';

    END LOOP;

    RETURN upper(trim(temp));

END
$func$;


-- Function #18
-- Free tables
CREATE OR REPLACE FUNCTION свободные_столики()
RETURNS int[]
LANGUAGE plpgsql
AS
$func$
BEGIN

    RETURN array(SELECT
                     id_столика
                 FROM столик
                 WHERE NOT столик_занят);

END
$func$;


-- Function #19
-- Discount of order by promotion
CREATE OR REPLACE FUNCTION скидка_заказа_по_акции(

    какого_заказа    int

) RETURNS numeric(12, 2)
LANGUAGE plpgsql
AS
$func$
DECLARE

    сумма     numeric(12, 2);
    скидка    int;

BEGIN

    сумма  = сумма_заказа(какого_заказа);

    скидка = (SELECT
                  скидка_акции_на_заказы
              FROM акция_на_заказы
              WHERE id_акции_на_заказы = (SELECT
                                              акция_на_заказ
                                          FROM заказ
                                          WHERE id_заказа = какого_заказа));

    RETURN coalesce(
                      0.01 * скидка * сумма

                    , 0 -- In case there is no dishes in the order
                        -- and so the above view has no records
                        -- in the result of the query and returns null
                   );

END
$func$;


-- Function #20
-- Discount of order by guest card
CREATE OR REPLACE FUNCTION скидка_заказа_по_карте(

    какого_заказа    int

) RETURNS numeric(12, 2)
LANGUAGE plpgsql
AS
$func$
DECLARE

    сумма     numeric(12, 2);
    скидка    int;

BEGIN

    сумма  = сумма_заказа(какого_заказа);

    скидка = (SELECT
                  скидка_вида
              FROM вид_карты_скидок
              WHERE id_вида_карты_скидок = (SELECT
                                                вид_карты_скидок
                                            FROM гостевая_карта_скидок
                                            WHERE id_карты_гостя = (SELECT
                                                                        гостевая_карта_скидок
                                                                    FROM заказ
                                                                    WHERE id_заказа = какого_заказа)));
    RETURN coalesce(
                      0.01 * скидка * сумма

                    , 0 -- In case there is no dishes in the order
                        -- and so the above view has no records
                        -- in the result of the query and returns null
                   );

END
$func$;


-- Function #21
--
CREATE OR REPLACE FUNCTION случайное_число_в_диапазоне(

    от_какого_значения    int
  , до_какого_значения    int

) RETURNS int
LANGUAGE plpgsql
AS
$func$
BEGIN

    RETURN (до_какого_значения - от_какого_значения) * random() + от_какого_значения;

END
$func$;


-- Function #22
--
CREATE OR REPLACE FUNCTION случайный_официант()
RETURNS int
LANGUAGE plpgsql
AS
$func$
DECLARE

    id_сотрудников            int[];
    количество_сотрудников    int;

BEGIN

    id_сотрудников = array(SELECT
                               id_сотрудника
                           FROM сотрудник
                           WHERE должность_сотрудника = (SELECT
                                                             id_должности
                                                         FROM должность
                                                         WHERE имя_должности ILIKE '%официант%'));

    количество_сотрудников = array_length(id_сотрудников, 1);

    RETURN id_сотрудников[случайное_число_в_диапазоне(1, количество_сотрудников)];

END

$func$;


-- Function #23
--
CREATE OR REPLACE FUNCTION случайный_сотрудник()
RETURNS int
LANGUAGE plpgsql
AS
$func$
DECLARE

    сотрудники                int[] = array(select id_сотрудника from сотрудник);
    количество_сотрудников    int   = array_length(id_сотрудников, 1);

BEGIN

    RETURN сотрудники[случайное_число_в_диапазоне(1, количество_сотрудников)];

END
$func$;


-- Function #24
--
CREATE OR REPLACE FUNCTION сотрудник_на_работе(

    какой_сотрудник    int          DEFAULT NULL
  , в_какое_время      timestamp    DEFAULT CURRENT_TIMESTAMP

) returns bool
LANGUAGE plpgsql
AS
$func$
DECLARE

    запись_до    record;

BEGIN

    WITH
        зс_сотрудника_в_дату AS (
            SELECT
                *
            FROM ve_запись_скуд_нарушения
            WHERE id_сотрудника = coalesce(какой_сотрудник, мой_id())
                  AND
                  дата = в_какое_время::date)

    SELECT
        *
    INTO запись_до
    FROM зс_сотрудника_в_дату
    WHERE время <= в_какое_время::time
    ORDER BY время DESC
    LIMIT 1;

    RETURN CASE
               WHEN запись_до.имя_считывателя = 'Вход'
                    AND
                  ((в_какое_время::date = CURRENT_DATE  AND (запись_до.след_время >= в_какое_время::time OR запись_до.след_время IS NULL))
                    OR
                   (в_какое_время::date <> CURRENT_DATE AND запись_до.след_выход AND запись_до.след_время >= в_какое_время::time))
                   THEN  TRUE
                ELSE FALSE
           END;

END
$func$;


-- Function #25
-- Attendance status
CREATE OR REPLACE FUNCTION статус_явки(

    какого_сотрудника    int
  , в_какую_дату         date

) RETURNS varchar
LANGUAGE plpgsql
AS
$func$
DECLARE

    нет_записей_скуд    bool;

BEGIN

    нет_записей_скуд = NOT exists(SELECT 1
                                  FROM ve_запись_скуд_с_параметрами
                                  WHERE id_сотрудника = какого_сотрудника
                                        AND
                                        дата          = в_какую_дату);

    IF NOT рабочий_день(в_какую_дату)

        THEN RETURN 'В (Выходной день)';

    ELSIF нет_записей_скуд

        THEN RETURN 'ПР (Отсутствие полный рабочий день)';

    ELSE RETURN (SELECT
                     статус_явки
                 FROM ve_запись_скуд_нарушения
                 WHERE id_сотрудника = какого_сотрудника
                       AND
                       дата          = в_какую_дату
                 LIMIT 1);
    END IF;

END
$func$;


-- Function #26
-- Attendance status for working time log
CREATE OR REPLACE FUNCTION статус_явки_для_табеля(

    какого_сотрудника    int
  , в_какую_дату         date

) RETURNS varchar
LANGUAGE plpgsql
AS
$func$
DECLARE

    статус    varchar;

BEGIN

    статус = статус_явки(какого_сотрудника, в_какую_дату);

    CASE

        WHEN статус LIKE 'В %'    THEN RETURN 'В';

        WHEN статус LIKE 'Я %'    THEN return 'Я';

        WHEN статус LIKE '%НН%'   THEN return 'НН';

        WHEN статус LIKE 'Я/ПР %' THEN return 'Я/ПР';

        WHEN статус LIKE 'ПР %'   THEN return 'ПР';

        ELSE                            return '??';

    END CASE;

END
$func$;


-- Function #27
-- Attendance status by working time log
CREATE OR REPLACE FUNCTION статус_явки_по_табелю(

    какого_сотрудника    int
  , за_какое_число       int
  , какого_месяца        int
  , какого_года          int

) RETURNS varchar
LANGUAGE plpgsql
AS
$func$
DECLARE

    запрос    varchar;
    статус    varchar;

BEGIN

    запрос = 'select "' || за_какое_число || E'" ->> \'статус_явки\' ' ||
             'from табель_учёта_рв ' ||
             'where сотрудник = ' || какого_сотрудника || ' ' ||
                   'and ' ||
                   'месяц = ' || какого_месяца || ' ' ||
                   'and ' ||
                   'год = ' || какого_года;

    EXECUTE запрос INTO статус;

    RETURN статус;

END
$func$;


-- Function #28
-- The table is not free
CREATE OR REPLACE FUNCTION столик_занят(

    какой_столик    int

) RETURNS bool
LANGUAGE plpgsql
AS
$func$
BEGIN

    RETURN coalesce(NOT какой_столик = ANY(свободные_столики()), TRUE);

END
$func$;


-- Function #29
--
CREATE OR REPLACE FUNCTION строка_на_центр(

    строка         varchar
  , ширина_поля    int

) RETURNS varchar
LANGUAGE plpgsql
AS
$func$
BEGIN

    RETURN concat(repeat(' ', (ширина_поля - char_length(строка))/2), строка);

END
$func$;


-- Function #30
-- Returns string of ordered array elements in format: '(слово: n1 [ .. | , ] (n2, ... ))'
-- Example: строка_чисел_массива('Cats', array[1,7,4,100,5,8,15,6,3]) --> '(Cats: 1, 3..8, 15, 100)'
CREATE OR REPLACE FUNCTION строка_чисел_массива(

    слово                 varchar
  , массив_чисел          int[]
  , обратная_сортировка   bool    DEFAULT FALSE

) RETURNS varchar
LANGUAGE plpgsql
AS
$func$
DECLARE

    список                    varchar = '';
    пустой_массив             bool = (массив_чисел = '{}')
                                      OR
                                     (массив_чисел IS NULL);

    начало_массива            bool;
    конец_массива             bool;
    в_массиве_один_элемент    bool;
    смежные_соседи            bool;
    разрыв_за_левым           bool;
    разрыв_за_правым          bool;

BEGIN

    IF пустой_массив
        THEN RETURN '';
    END IF;

    -- Sorting array elements
    массив_чисел = (SELECT
                       CASE обратная_сортировка
                           WHEN TRUE
                               THEN array_agg(element ORDER BY element DESC)
                           ELSE     array_agg(element ORDER BY element  ASC)
                       END
                    FROM unnest(массив_чисел) AS arr(element));

    -- Building string with list of elements
    FOR i IN 1..array_length(массив_чисел, 1)
    LOOP

       начало_массива         = (i = 1);
       конец_массива          = (i = array_length(массив_чисел, 1));
       в_массиве_один_элемент = (array_length(массив_чисел, 1) = 1);

       смежные_соседи         = (массив_чисел[i - 1] = массив_чисел[i] - 1)
                                 AND
                                (массив_чисел[i + 1] = массив_чисел[i] + 1);

       разрыв_за_левым       = (массив_чисел[i - 2] <> массив_чисел[i] - 2)
                                OR
                               (массив_чисел[i - 2] IS NULL);

       разрыв_за_правым      = (массив_чисел[i + 2] <> массив_чисел[i] + 2)
                                OR
                               (массив_чисел[i + 2] IS NULL);

        IF начало_массива
            THEN
                список = concat('(', слово, ': ', массив_чисел[1]);
                IF в_массиве_один_элемент
                    THEN
                        список = concat(список, ')');
                        EXIT;
                END IF;
        ELSIF конец_массива
            THEN
                IF разрыв_за_левым
                    THEN список = concat(список, ', ');
                END IF;

                список= concat(список, массив_чисел[i], ')');

        ELSIF смежные_соседи
            THEN
                IF разрыв_за_левым
                   THEN
                       список = concat(список, '..');
                END IF;

         ELSIF разрыв_за_левым
             THEN
                 список = concat(список, ', ', массив_чисел[i]);
         ELSE    список = concat(список, массив_чисел[i]);
         END IF;

    END LOOP;

    RETURN список;

END
$func$;


-- Function #31
-- Price of order
CREATE OR REPLACE FUNCTION сумма_заказа(

    какого_заказа    int

) RETURNS numeric(12, 2)
LANGUAGE plpgsql
AS
$func$
BEGIN

    RETURN coalesce(
                     (SELECT
                          сумма_заказа
                      FROM ve_блюдо_со_скидкой_в_заказе
                      WHERE заказ = какого_заказа
                      LIMIT 1)

                    , 0 -- In case there is no dishes in the order
                        -- and so the above view has no records
                        -- in the result of the query and returns null
                   );

END
$func$;


-- Function #32
-- Text of payment check
CREATE OR REPLACE FUNCTION текст_чека_платежа(

    какого_платежа    int
  , границы           bool    DEFAULT TRUE
  , дубликат          bool    DEFAULT FALSE

) RETURNS varchar
LANGUAGE plpgsql
AS
$func$
DECLARE

    header           varchar = '';
    body             varchar = '';
    footer           varchar;

    метод_платежа    varchar;
    какого_счёта     int;
    какого_заказа    int;

    сумма            numeric(12, 2);

    имя_кассира      varchar;

BEGIN

    имя_кассира = полное_имя_сотрудника((SELECT
                                             кассир
                                         FROM платёж
                                         WHERE id_платежа = какого_платежа));

    метод_платежа = (SELECT
                         имя_вида_платежей
                     FROM вид_платежа
                     WHERE id_вида_платежей = (SELECT
                                                   вид_платежа
                                               FROM платёж
                                               WHERE id_платежа = какого_платежа));


    -- Upper part of the bill

    IF границы THEN

        header = E'\n' ||
                 E'\n░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░' ||
                 E'\n○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○\n\n';
    END IF;

    IF дубликат THEN

        header = header ||

        E'\n\n' ||
        E'\n                Д У Б Л И К А Т' ||
        E'\n                ‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾';

    END IF;

    header = header ||


    E'\n\n' ||
    E'\n            К А С С О В Ы Й   Ч Е К' ||
    E'\n' ||
    E'\n                   ПЛАТЁЖ #' || какого_платежа ||
    E'\n' ||
    E'\n               ' || to_char(
                                     (SELECT
                                          время_платежа
                                      FROM платёж
                                      WHERE id_платежа = какого_платежа),

                                     'DD.MM.YYYY HH24:MI'
                                   ) ||
    E'\n\n\n' ||
    E'\n Кассир: ' || имя_кассира ||
    E'\n Способ оплаты: ' || метод_платежа ||
    E'\n\n\n' ||
    E'\n' || format('%-35s%12s', '    назначение платежа', 'сумма') || E'\n';


    -- Lower part of the bill
    footer =  E'\n\n\n\n' ||
              E'\n            © 2022 Ярослав Козлов' ||
              E'\n           E-mail: kozlov_yv@mail.ru' ||
              E'\n';

    IF границы
        THEN

            footer =  footer || E'\n' ||
                                E'\n○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○' ||
                                E'\n░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░\n';

    END IF;



    какого_счёта = (SELECT счёт
                    FROM ve_платежи_по_счетам
                    WHERE платёж = какого_платежа);


    какого_заказа = (SELECT заказ
                     FROM ve_платежи_по_счетам
                     WHERE платёж = какого_платежа);


    сумма = (SELECT сумма_платежа
             FROM платёж
             WHERE id_платежа = какого_платежа);


    body = body ||

           E'\n' || format(' %-35s%12s', 'Оплата счёта #' || какого_счёта || ' (заказ #' || какого_заказа ||  ')',

                            число_с_пробелами(сумма));


    return header || body || footer;

END
$func$;


-- Function #33
-- Digit after decimal at indicated position
CREATE OR REPLACE FUNCTION цифра_после_десятичной_запятой(

    какого_числа       numeric
  , в_какой_позиции    int

) RETURNS int
LANGUAGE plpgsql
AS
$func$
BEGIN

    RETURN floor(10 * ((power(10, в_какой_позиции - 1) * какого_числа)::numeric % 1));

END
$func$;


-- Function #34
-- Tips of employee for month
CREATE OR REPLACE FUNCTION чаевые_сотрудника_за_месяц(

    какого_сотрудника    int
  , за_какой_месяц       int
  , какого_года          int

) RETURNS numeric(12, 2)
LANGUAGE plpgsql
AS
$func$
BEGIN

    RETURN  coalesce(
                      (SELECT
                           sum(сумма_чаевых_сотрудника)
                       FROM чаевые_сотрудника
                       WHERE сотрудник_чаевых = какого_сотрудника
                             AND
                             заказ_чаевых IN (SELECT
                                                  id_заказа
                                              FROM заказ
                                              WHERE extract(MONTH FROM время_закрытия_заказа)::int = за_какой_месяц
                                                    AND
                                                    extract(YEAR  FROM время_закрытия_заказа)::int = какого_года))

                     , 0

                    );

END
$func$;


-- Function #35
-- Hours in the schedule of employee
CREATE OR REPLACE FUNCTION часов_в_графике_сотрудника(

    какого_сотрудника    int

) RETURNS numeric(5, 2)
LANGUAGE plpgsql
AS
$func$
DECLARE

    время_графика    time;

BEGIN

    время_графика = (SELECT
                         конец_рабочего_времени - начало_рабочего_времени
                     FROM график_рабочего_времени
                     WHERE id_графика = (SELECT
                                             график_сотрудника
                                         FROM сотрудник
                                         WHERE id_сотрудника = какого_сотрудника));

    RETURN (

             extract(HOUR   FROM время_графика)
            +
             extract(MINUTE FROM время_графика)/60

           )::numeric(5, 2);

END
$func$;


-- Function #36
-- Hours worked by working time log
CREATE OR REPLACE FUNCTION часов_отработано_по_табелю(

    какого_сотрудника    int
  , за_какое_число       int
  , какого_месяца        int
  , какого_года          int

) returns varchar
LANGUAGE plpgsql
AS
$func$
DECLARE

    запрос              varchar;
    часов_отработано    varchar;

BEGIN

    запрос = 'SELECT "' || за_какое_число || E'" ->> \'часов_отработано\' ' ||
             'FROM табель_учёта_рв ' ||
             'WHERE сотрудник = ' || какого_сотрудника || ' ' ||
                   'AND ' ||
                   'месяц     = ' || какого_месяца || ' ' ||
                   'AND ' ||
                   'год       = ' || какого_года;

    EXECUTE запрос INTO часов_отработано;

    RETURN часов_отработано;

END
$func$;


-- Function #37
-- Employee worked hours
CREATE OR REPLACE FUNCTION часы_работы(

    какого_сотрудника    int
  , в_какую_дату        date

) RETURNS numeric(5, 2)
LANGUAGE plpgsql
AS
$func$
BEGIN

    RETURN (

             extract(HOUR   FROM время_работы(какого_сотрудника, в_какую_дату))
            +
             extract(MINUTE FROM время_работы(какого_сотрудника, в_какую_дату))/60

           )::numeric(5, 2);

END
$func$;


-- Function #38
-- Insert spaces between each 3 digits of the sum
CREATE OR REPLACE FUNCTION число_с_пробелами(

    сумма    numeric(12, 2)

) RETURNS varchar
LANGUAGE plpgsql
AS
$func$
BEGIN

    RETURN trim(reverse(regexp_replace(reverse(сумма::text), '(\d{3})', '\1 ', 'g')));

END
$func$;



\echo '----------------'



                -- [ P R O C E D U R E S ] --


-- Procedure #1
-- Enable staff proximity cards
CREATE OR REPLACE PROCEDURE активировать_ключ_карты(

    пользователь_карты    int    DEFAULT NULL

)
LANGUAGE plpgsql
AS
$pr$
BEGIN 

    IF пользователь_карты IS NULL
        THEN

            -- Enable cards for all employees
            UPDATE ключ_карта_скуд
            SET ключ_карта_активирована = TRUE
            WHERE id_ключ_карты IN (SELECT
                                        ключ_карта 
                                    FROM ключ_карта_сотрудника);

    ELSE

        -- Enable card of the given employee
        UPDATE ключ_карта_скуд
        SET ключ_карта_активирована = TRUE
        WHERE id_ключ_карты = (SELECT
                                   ключ_карта
                               FROM ключ_карта_сотрудника
                               WHERE сотрудник = пользователь_карты);

    END IF;

END
$pr$;


-- Procedure #2
--
CREATE OR REPLACE PROCEDURE выдать_зп(

    какому_сотруднику    int          DEFAULT NULL
  , за_какой_месяц       int          DEFAULT NULL
  , какого_года          int          DEFAULT NULL
  , когда                timestamp    DEFAULT NULL

)
LANGUAGE plpgsql
AS
$pr$
DECLARE

    кому_и_за_какой_период    record;
    когда_не_указано          bool = (когда IS NULL);

BEGIN

    CALL начислить_зп(какому_сотруднику, за_какой_месяц, какого_года);

    IF когда_не_указано
        THEN когда = CURRENT_TIMESTAMP;
    END IF;

    FOR кому_и_за_какой_период IN (SELECT DISTINCT 
                                       сотрудник
                                     , год_зарплаты   AS год
                                     , месяц_зарплаты AS месяц
                                   FROM зарплата
                                   WHERE coalesce(сотрудник = какому_сотруднику, TRUE)
                                         AND
                                         coalesce(год_зарплаты = какого_года,    TRUE)
                                         AND
                                         coalesce(месяц_зарплаты = за_какой_месяц, TRUE)
                                         AND
                                         NOT зарплата_выдана)
    LOOP

        CALL выдать_зп_сотруднику(  кому_и_за_какой_период.сотрудник
                                  , кому_и_за_какой_период.месяц
                                  , кому_и_за_какой_период.год
                                  , когда);

    END LOOP;

END
$pr$;


-- Procedure #3
-- Pay wages
CREATE OR REPLACE PROCEDURE выдать_зп_сотруднику(

    какому_сотруднику    int
  , за_какой_месяц       int
  , какого_года          int
  , когда                timestamp    DEFAULT NULL

)
LANGUAGE plpgsql
AS
$pr$
DECLARE

    чаевые                      numeric(12, 2);
    зп                          numeric(12, 2) = зп_сотрудника(какому_сотруднику, за_какой_месяц, какого_года);
    зарплату_ещё_не_выдавали    bool;
    когда_не_указано            bool = (когда IS NULL);

BEGIN

    CALL начислить_зп(какому_сотруднику, за_какой_месяц, какого_года);

    зарплату_ещё_не_выдавали = coalesce(  NOT (SELECT
                                                   зарплата_выдана
                                               FROM зарплата
                                               WHERE сотрудник      = какому_сотруднику
                                                     AND
                                                     месяц_зарплаты = за_какой_месяц
                                                     AND
                                                     год_зарплаты   = какого_года)
                                        , TRUE
                                       );

    IF зп > 0 AND зарплату_ещё_не_выдавали

        THEN

            IF когда_не_указано
                THEN когда = CURRENT_TIMESTAMP;
            END IF;

            чаевые = чаевые_сотрудника_за_месяц(какому_сотруднику, за_какой_месяц, какого_года);

            DELETE FROM чаевые_сотрудника
            WHERE сотрудник_чаевых = какому_сотруднику
                  AND
                  заказ_чаевых IN (SELECT
                                       id_заказа
                                   FROM заказ
                                   WHERE extract(MONTH FROM время_закрытия_заказа)::int = за_какой_месяц
                                         AND
                                         extract(YEAR  FROM время_закрытия_заказа)::int = какого_года);

            INSERT INTO доход_либо_расход(  имя_операции
                                          , время_операции
                                          , сумма_дохода
                                          , сумма_расхода)

            VALUES                       (  concat_ws(' ', 'Получение чаевых сотрудника', полное_имя_сотрудника(какому_сотруднику), 'за', месяц(за_какой_месяц), какого_года, 'года')
                                          , когда
                                          , чаевые
                                          , NULL);


            INSERT INTO доход_либо_расход(  имя_операции
                                          , время_операции
                                          , сумма_дохода
                                          , сумма_расхода)

            VALUES                       (  concat_ws(' ', 'Выплата зарплаты сотруднику', полное_имя_сотрудника(какому_сотруднику), 'за', месяц(за_какой_месяц), какого_года, ' года')
                                          , когда
                                          , NULL
                                          , зп);

            UPDATE зарплата
            SET зарплата_выдана = TRUE
            WHERE сотрудник      = какому_сотруднику
                  AND
                  месяц_зарплаты = за_какой_месяц
                  AND
                  год_зарплаты   = какого_года;

    END IF;

END
$pr$;


-- Procedure #4
-- Write out a bill
CREATE OR REPLACE PROCEDURE выписать_счёт(

    IN       за_какой_заказ    int
  , IN       в_какое_время     timestamp    DEFAULT NULL

  , INOUT    id_для_счёта      int          DEFAULT NULL
)
LANGUAGE plpgsql
AS
$pr$
DECLARE

    время_не_указано           bool = (в_какое_время IS NULL);

    статус_заказа_для_счёта    int;

    исходная_сумма             numeric(12, 2);
    скидка_по_акции            numeric(12, 2);
    скидка_по_карте            numeric(12, 2);
    итого_за_заказ             numeric(12, 2);
    чаевые                     numeric(12, 2);
    сумма_к_оплате             numeric(12, 2);

    header                     varchar;
    body                       varchar = '';
    footer                     varchar;

    текст                      varchar;
    текст_дубликат             varchar;

    r                          record;

    место_метки_дубликата      constant int = 141;

    заказа_нет                 bool = NOT exists(SELECT 1
                                                 FROM заказ
                                                 WHERE id_заказа = за_какой_заказ);

    счёт_не_выписан            constant int = 1;
    счёт_выписан               constant int = 2;
    счёт_оплачен               constant int = 3;

    нет_блюд                   bool;

BEGIN

    IF заказа_нет
        THEN
            RAISE NOTICE E'\n\nЗаказ #% не существует! --> Проверьте корректность указанного номера заказа.\n', за_какой_заказ;
            RETURN;
    END IF;


    статус_заказа_для_счёта = (SELECT
                                   статус_заказа 
                               FROM заказ
                               WHERE id_заказа = за_какой_заказ);

    CASE

        -- If there's no bill so far for the order
        WHEN статус_заказа_для_счёта = счёт_не_выписан
            THEN

                нет_блюд = NOT exists(SELECT 1
                                      FROM блюдо_заказ
                                      WHERE заказ = за_какой_заказ);

                IF нет_блюд
                    THEN
                        RAISE NOTICE E'\n\nВ заказе #% нет блюд. Добавьте блюда в заказ.\n\n', за_какой_заказ;
                        RETURN;
                END IF;

                исходная_сумма = сумма_заказа(за_какой_заказ);

                скидка_по_акции = скидка_заказа_по_акции(за_какой_заказ);

                скидка_по_карте = скидка_заказа_по_карте(за_какой_заказ);

                итого_за_заказ = исходная_сумма - скидка_по_акции - скидка_по_карте;

                чаевые = 0.15 * итого_за_заказ;

                сумма_к_оплате = итого_за_заказ + чаевые;

                IF время_не_указано
                    THEN в_какое_время = CURRENT_TIMESTAMP;
                END IF;

                INSERT INTO счёт  (заказ,          сумма_счёта,    сумма_чаевых, время_выписки_счёта)
                VALUES            (за_какой_заказ, сумма_к_оплате, чаевые,       в_какое_время      )
                RETURNING id_счёта INTO id_для_счёта;


                -- Upper part of the bill
                header =  E'\n' ||
                          E'\n░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░' ||
                          E'\n○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○\n' ||
                          E'\n                               СЧЁТ #' || id_для_счёта ||
                          E'\n' ||
                          E'\n                          ' || to_char(в_какое_время, 'DD.MM.YYYY HH24:MI') ||
                          E'\n' ||
                          E'\n                              Заказ #' || (SELECT
                                                                             заказ
                                                                         FROM счёт
                                                                         WHERE id_счёта = id_для_счёта) ||
                          E'\n' ||
                          E'\n' || format('%-33s%10s%11s%14s', '    блюдо', 'цена', 'скидка', 'со скидкой') || E'\n';


                    -- Lower part of the bill
                    footer =  E'\n' ||
                              E'\n○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○' ||
                              E'\n░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░\n';


                -- List of rows with info about dishes
                FOR r IN (SELECT
                           *
                          FROM ve_блюдо_со_скидкой_в_заказе
                          WHERE заказ = за_какой_заказ)
                LOOP

                    body =  body ||

                           E'\n' || format('%-33s%10s%11s%14s', r.имя_блюда
                                                              , число_с_пробелами(r.цена_блюда)
                                                              , coalesce('-' || r.процент_скидки || '%', '')
                                                              , число_с_пробелами(r.цена_со_скидкой));

                END LOOP;


                -- Subtotal results and final sum of the bill

                body = body ||

                      E'\n---------------------------------------------------------------------' ||
                      E'\n' || format('%-33s%35s', 'ИТОГО ЗА БЛЮДА ЗАКАЗА', число_с_пробелами(r.сумма_заказа));

                IF (скидка_по_акции + скидка_по_карте > 0)
                    THEN
                        body = body || E'\n';

                        IF (скидка_по_акции > 0)
                            THEN
                                body = body ||

                                      E'\n' || format('%-33s%35s', 'СКИДКА ПО АКЦИИ НА ЗАКАЗ','-' || число_с_пробелами(скидка_по_акции));
                        END IF;


                        IF (скидка_по_карте > 0)
                            THEN
                                body = body ||

                                      E'\n' || format('%-33s%35s', 'СКИДКА ПО КАРТЕ ГОСТЯ', '-' || число_с_пробелами(скидка_по_карте));
                        END IF;

                        body = body ||

                              E'\n---------------------------------------------------------------------' ||
                              E'\n' || format('%-33s%35s', 'ИТОГО ЗА ЗАКАЗ', число_с_пробелами(итого_за_заказ));
                END IF;


                body = body ||

                      E'\n' || format('%-33s%35s', 'Чаевые 15%', число_с_пробелами(чаевые)) ||
                      E'\n\n' || format('%-33s%35s', 'ВСЕГО К ОПЛАТЕ', число_с_пробелами((итого_за_заказ + чаевые)));

                текст = header || body || footer;


                -- Show the bill
                RAISE NOTICE '%', текст;


                -- Set order status as 'Bill written out'
                UPDATE заказ
                SET статус_заказа = 2
                WHERE id_заказа = за_какой_заказ;


                -- Save text of the bill as a single piece of data
                UPDATE счёт
                SET текст_блок = текст
                WHERE заказ = за_какой_заказ;


            -- If there's already an issued bill for the order
            WHEN статус_заказа_для_счёта = счёт_выписан OR статус_заказа_для_счёта = счёт_оплачен
                THEN

                    -- Extract saved text of the bill
                    текст = (SELECT
                                 текст_блок
                             FROM счёт
                             WHERE заказ = за_какой_заказ);


                    -- Add "DUPLICATE" label into the saved text of the bill
                    текст_дубликат = left(текст, место_метки_дубликата) ||
                                     E'\n' ||
                                     E'\n                           Д У Б Л И К А Т' ||
                                     E'\n                           ‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾' ||
                                     right(текст, char_length(текст) - место_метки_дубликата);


                    -- Order bill is not yet fully paid
                    IF статус_заказа_для_счёта = 2
                        THEN RAISE NOTICE E'\n\nСчёт на заказ #% был уже выписан --> Предоставление дубликата:%', за_какой_заказ, текст_дубликат;

                    -- The bill is fully paid
                    ELSE RAISE NOTICE E'\n\nЗаказ #% уже закрыт.\nСчёт выписан и оплачен --> Предоставление дубликата:%', за_какой_заказ, текст_дубликат;

                    END IF;

            ELSE RAISE EXCEPTION E'\n\nНеизвестное значение статуса заказа [1; 2; 3] --> %!\n', статус_заказа_для_счёта;

    END CASE;

END
$pr$;


-- Procedure #5
-- Disable staff proximity cards
CREATE OR REPLACE PROCEDURE деактивировать_ключ_карты(

    пользователь_карты    int    DEFAULT NULL

)
LANGUAGE plpgsql
AS
$pr$
BEGIN 

    IF пользователь_карты IS NULL
        THEN

            -- Disable cards for all except those of job 'Управляющий'
            UPDATE ключ_карта_скуд
            SET ключ_карта_активирована = FALSE
            WHERE id_ключ_карты IN (SELECT
                                        ключ_карта
                                    FROM ключ_карта_сотрудника
                                    WHERE сотрудник IN (SELECT
                                                            id_сотрудника
                                                        FROM сотрудник
                                                        WHERE должность_сотрудника <> (SELECT
                                                                                           id_должности
                                                                                       FROM должность
                                                                                       WHERE имя_должности = 'Управляющий') -- Except manager
                                                       )
                                  );

    ELSE

        -- Disable card of the given employee
        UPDATE ключ_карта_скуд
        SET ключ_карта_активирована = FALSE
        WHERE id_ключ_карты = (SELECT
                                   ключ_карта
                               FROM ключ_карта_сотрудника
                               WHERE сотрудник = пользователь_карты);

    END IF;

END
$pr$;


-- Procedure #6
--
CREATE OR REPLACE PROCEDURE день_случ_заказов(

    в_какую_дату    date    DEFAULT CURRENT_DATE
  , сколько         int     DEFAULT 10

)
LANGUAGE plpgsql
AS
$pr$
DECLARE

    выходной                  bool = NOT рабочий_день(в_какую_дату);
    дата_из_будущего          bool = (в_какую_дату > CURRENT_DATE);
    текущая_дата              bool = (в_какую_дату = CURRENT_DATE);
    запрос                    varchar;
    массив_диапазонов         jsonb;
    массив_для_заказов        jsonb = '[]';


    мин_рабочее_время         time = (SELECT
                                        min(начало_рабочего_времени)
                                      FROM график_рабочего_времени);

    макс_рабочее_время        time = (SELECT
                                        CASE
                                            WHEN текущая_дата
                                                THEN least(CURRENT_TIME, max(конец_рабочего_времени))
                                            ELSE     max(конец_рабочего_времени)
                                        END
                                      FROM график_рабочего_времени);

    случайный_диапазон        json;
    случ_номер_элемента       int;
    случайный_столик          int;
    минимальное_время         time;
    максимальное_время        time;
    случайное_время_начала    time;
    случайное_время_конца     time;
    минимальное_вр_обслуж     interval = interval '1 HOUR';

    сотрудники_для_заказа     int[] = array[ 1
                                           , 2
                                           , 3
                                           , 4
                                           , 5
                                           , 6
                                           , 7 ];
    сотрудники_в_диапазоне     int[];
    случайный_сотрудник        int;
    на_работе_никого           bool = TRUE;

    случ_заказ                 int;

    все_блюда                  constant int[] = (SELECT
                                                     array_agg(id_блюда)
                                                 FROM блюдо);

    максимум_блюд              constant int = 5;
    случ_блюдо                 int;
    счёт_заказа                int;

    акции_на_заказы            int[] = (SELECT
                                            array_agg(id_акции_на_заказы)
                                        FROM акция_на_заказы);

    гостевые_карты             int[] = (SELECT
                                            array_agg(id_карты_гостя)
                                        FROM гостевая_карта_скидок);

    случ_акция_на_заказы       int;
    случ_карта_гостя           int;

BEGIN

    IF выходной
        THEN RAISE NOTICE E'\n\n% выходной день. Выберите другую дату.\n', дата_словами(в_какую_дату);
        RETURN;
    ELSIF дата_из_будущего
        THEN RAISE NOTICE E'\n\n% ещё не наступило. Выберите другую дату.\n', дата_словами(в_какую_дату);
        RETURN;
    END IF;

    запрос = concat(E'

    WITH
        temp_1 AS (
            SELECT
                с.id_столика                       AS столик
              , з.время_заказа::time               AS начало_заказа
              , з.время_освобождения_столика::time AS конец_заказа
            FROM     столик AS с
            LEFT JOIN заказ AS з ON з.столик = id_столика
            WHERE з.время_заказа::date = \'', в_какую_дату, E'\'
            ORDER BY столик, начало_заказа)

       , temp_2 AS (
             SELECT
                 id_столика AS столик
               , нач
               , кон
             FROM столик, (VALUES (\'', мин_рабочее_время,  E'\'::time, \'', мин_рабочее_время,  E'\'::time),
                                  (\'', макс_рабочее_время, E'\'::time, \'', макс_рабочее_время, E'\'::time)) AS t(нач, кон)
             ORDER BY столик, нач)

       , uni AS(
             SELECT
                 *
             FROM  temp_1
             UNION
             SELECT 
                 *
             FROM temp_2)

       , rows_with_windows AS (
             SELECT
                 столик
               , CASE
                     WHEN lead(начало_заказа) OVER w >= конец_заказа + interval \'1 HOUR\'
                         THEN конец_заказа
                 END AS минимум
               , CASE
                     WHEN lead(начало_заказа) OVER w >= конец_заказа + interval \'1 HOUR\'
                         THEN lead(начало_заказа) OVER w - interval \'1 HOUR\'
                 END AS максимум
             FROM uni
             WINDOW w AS (PARTITION BY столик ORDER BY начало_заказа)
             ORDER BY столик, минимум)

        , limits_for_order AS (
              SELECT
                  *
              FROM rows_with_windows
              WHERE минимум IS NOT NULL
              ORDER BY столик, минимум)

    SELECT
        json_agg(json_build_object(\'столик\', столик, \'минимум\', минимум, \'максимум\', максимум) ORDER BY столик, минимум)
    FROM limits_for_order');

    EXECUTE запрос INTO массив_диапазонов; -- Getting json array with info about time ranges fit for minimum time of order


    FOR i IN 1..сколько
    LOOP

        IF jsonb_array_length(массив_диапазонов) = 0
            THEN IF i = 1
                     THEN RETURN;
                 ELSE EXIT;
                 END IF;
        END IF;

        случ_номер_элемента = (random() * jsonb_array_length(массив_диапазонов) - 1)::int;

        случайный_диапазон = массив_диапазонов -> случ_номер_элемента;

        случайный_столик   = случайный_диапазон ->> 'столик';
        минимальное_время  = случайный_диапазон ->> 'минимум';
        максимальное_время = случайный_диапазон ->> 'максимум';

        случайное_время_начала = date_trunc('MINUTE', минимальное_время + random() * (максимальное_время - минимальное_время));

        случайное_время_конца = date_trunc('MINUTE', случайное_время_начала + минимальное_вр_обслуж + random() * (максимальное_время - случайное_время_начала));

        -- Appending randomized times for beginning and end of order into another json array
        массив_для_заказов = массив_для_заказов || jsonb_build_object('случ_столик', случайный_столик, 'случ_начало', случайное_время_начала, 'случ_конец', случайное_время_конца);

        -- Updating array of time ranges taking in account randomly selected (occupied for an order) fragment of time
        массив_диапазонов = массив_диапазонов - случ_номер_элемента;

        IF случайное_время_начала - минимальное_время >= минимальное_вр_обслуж
            THEN массив_диапазонов = массив_диапазонов || ('[' || jsonb_build_object('столик', случайный_столик, 'минимум', минимальное_время, 'максимум', случайное_время_начала - минимальное_вр_обслуж)::text || ']')::jsonb;
        END IF;

        IF случайное_время_конца <= максимальное_время
            THEN массив_диапазонов = массив_диапазонов || ('[' || jsonb_build_object('столик', случайный_столик, 'минимум', случайное_время_конца, 'максимум', максимальное_время)::text || ']')::jsonb;
        END IF;

    END LOOP;


    -- Sorting elements of json array ordering by the time of random beginning of oder
    массив_для_заказов = (SELECT
                              jsonb_agg(element ORDER BY (element ->> 'случ_начало')::time)
                          FROM jsonb_array_elements(массив_для_заказов) AS arr(element));

    FOR i IN 0..(jsonb_array_length(массив_для_заказов) - 1)
    LOOP

        сотрудники_в_диапазоне = (SELECT
                                      array_agg(id)
                                  FROM unnest(сотрудники_для_заказа) AS arr(id)
                                  WHERE был_в_интервале(  в_какую_дату
                                                        , (массив_для_заказов -> i ->> 'случ_начало')::time
                                                        , (массив_для_заказов -> i ->> 'случ_конец' )::time
                                                        , id));

        случайный_сотрудник = сотрудники_в_диапазоне[случайное_число_в_диапазоне(1, array_length(сотрудники_в_диапазоне, 1))];

        IF случайный_сотрудник IS NULL
            THEN CONTINUE;
            ELSE на_работе_никого = FALSE;
        END IF;

        CALL открыть_новый_заказ(  столик_заказа => (массив_для_заказов -> i ->> 'случ_столик')::int
                              , кто_создал    => случайный_сотрудник
                              , в_какое_время => в_какую_дату + (массив_для_заказов -> i ->> 'случ_начало')::time
                              , id_для_заказа => случ_заказ);

        FOR j IN 1..случайное_число_в_диапазоне(1, максимум_блюд)
        LOOP

            случ_блюдо = все_блюда[случайное_число_в_диапазоне(1, array_length(все_блюда, 1))];

            CALL добавить_блюдо_в_заказ(случ_заказ, случ_блюдо);

        END LOOP;

        -- Random value = 0 is included to make NULL case - order without discount by promotion
        случ_акция_на_заказы = акции_на_заказы[случайное_число_в_диапазоне(0, array_length(акции_на_заказы, 1))];

        CALL добавить_в_заказ_скидку_акции(случ_заказ, случ_акция_на_заказы);


        -- Random value = 0 is included to make NULL case - order without discount by guest card
        случ_карта_гостя = гостевые_карты[случайное_число_в_диапазоне(0, array_length(гостевые_карты, 1))];

        CALL добавить_в_заказ_скидку_карты(случ_заказ, случ_карта_гостя);


        CALL выписать_счёт(случ_заказ, в_какую_дату + (массив_для_заказов -> i ->> 'случ_конец')::time, счёт_заказа);

        UPDATE заказ
        SET время_освобождения_столика = в_какую_дату + (массив_для_заказов -> i ->> 'случ_конец')::time,
            время_закрытия_заказа      = в_какую_дату + (массив_для_заказов -> i ->> 'случ_конец')::time
        WHERE id_заказа = случ_заказ;

        CALL оплатить_счёт(счёт_заказа, в_какое_время => в_какую_дату + (массив_для_заказов -> i ->> 'случ_конец')::time);

    END LOOP;

   IF на_работе_никого
       THEN RAISE NOTICE E'\n\nСотрудники не пришли на работу --> Проверьте соответствие рабочего времени графиков желаемому времени заказа и регистрацию входа/выхода в системе контроля доступа с помощью ключ-карт.';
   END IF;

END
$pr$;


-- Procedure #7
--
CREATE OR REPLACE PROCEDURE день_случ_событий(

    в_какую_дату        date    DEFAULT NULL
  , с_нарушениями       bool    DEFAULT TRUE
  , максимум_заказов    int     DEFAULT 10

)
LANGUAGE plpgsql
AS
$pr$
DECLARE

    дата_не_указана     bool = (в_какую_дату IS NULL);
    время_сдачи_кассы   constant time = '18:00'::time;

BEGIN

    IF дата_не_указана
        THEN в_какую_дату = CURRENT_DATE;
    END IF;

    CALL день_событий_скуд(в_какую_дату, с_нарушениями);
    CALL день_случ_заказов(в_какую_дату, максимум_заказов);
    CALL сдать_кассу(в_какую_дату + время_сдачи_кассы);

END
$pr$;


-- Procedure #8
--
CREATE OR REPLACE PROCEDURE день_событий_скуд(

    в_какую_дату       date    DEFAULT CURRENT_DATE
  , с_наруш_графика    bool    DEFAULT TRUE

)
LANGUAGE plpgsql
AS
$pr$
DECLARE

    выходной             constant bool = NOT рабочий_день(в_какую_дату);
    один_сотрудник       record;
    есть_записи_скуд     bool;
    одна_ключ_карта      int;
    начало_графика       time;
    конец_графика        time;
    время_входа          time;
    время_выхода         time;
    вероятность_наруш    constant numeric = 0.3;
    отклонение_наруш     interval;
    макс_отклонение      constant interval = '1 HOUR';
    вход                 constant int = 1;
    выход                constant int = 2;

BEGIN

    IF выходной 
        THEN
            raise notice E'\n\n% выходной день.\n\n', дата_словами(в_какую_дату);
            RETURN;
    END IF;

    FOR один_сотрудник IN (SELECT * FROM сотрудник)
    LOOP

         одна_ключ_карта = (SELECT
                                ключ_карта
                            FROM ключ_карта_сотрудника
                            WHERE сотрудник = один_сотрудник.id_сотрудника);

         есть_записи_скуд = exists(SELECT 1
                                   FROM запись_скуд
                                   WHERE время_записи_скуд::date = в_какую_дату
                                         AND
                                         ключ_карта              = одна_ключ_карта);

         IF есть_записи_скуд
             THEN CONTINUE;
         END IF;

         начало_графика = (SELECT
                               начало_рабочего_времени
                           FROM график_рабочего_времени
                           WHERE id_графика = один_сотрудник.график_сотрудника);

         конец_графика = (SELECT
                               конец_рабочего_времени
                           FROM график_рабочего_времени
                           WHERE id_графика = один_сотрудник.график_сотрудника);

        IF с_наруш_графика AND random() < вероятность_наруш
            THEN
                отклонение_наруш = макс_отклонение * power(random(), 3.0);
                время_входа = date_trunc('MINUTE', начало_графика + отклонение_наруш);

                отклонение_наруш = макс_отклонение * power(random(), 3.0);
                время_выхода = date_trunc('MINUTE', конец_графика - отклонение_наруш);

        ELSE
                время_входа  = date_trunc('MINUTE', начало_графика - макс_отклонение * random());
                время_выхода = date_trunc('MINUTE', конец_графика  + макс_отклонение * random());

        END IF;

        CALL приложить_ключ_карту(вход,  одна_ключ_карта, в_какую_дату + время_входа );
        CALL приложить_ключ_карту(выход, одна_ключ_карта, в_какую_дату + время_выхода);

    END LOOP;

END
$pr$;


-- Procedure #9
-- Add dish to order
CREATE OR REPLACE PROCEDURE добавить_блюдо_в_заказ(

    в_какой_заказ    int
  , какое_блюдо      int

)
LANGUAGE plpgsql
AS
$pr$
DECLARE

    заказа_нет                          bool = NOT exists(SELECT 1
                                                          FROM заказ
                                                          WHERE id_заказа = в_какой_заказ);

    статус_заказа_добавляемого_блюда    int = (SELECT
                                                   статус_заказа
                                               FROM заказ
                                               WHERE id_заказа = в_какой_заказ);

    уже_выписан_счёт                    bool = (статус_заказа_добавляемого_блюда > 1);

    имя_статуса                         varchar = (SELECT
                                                       имя_статуса_заказа
                                                   FROM статус_заказа
                                                   WHERE id_статуса_заказа = статус_заказа_добавляемого_блюда);

BEGIN

    IF заказа_нет
        THEN
            RAISE NOTICE E'\n\nЗаказа с номером #% нет --> Проверьте корректность указанного номера заказа.\n\n', в_какой_заказ;
            RETURN;

    ELSIF уже_выписан_счёт
        THEN
            RAISE NOTICE E'\n\nК заказу в статусе "%" не может быть добавлено блюдо!\n\n', имя_статуса;
            RETURN;

    END IF;

    -- Add the dish to the order (make a couple dish-order with unique id by default)
    INSERT INTO блюдо_заказ (id_блюда_заказа, заказ,         блюдо      )
    VALUES                  (DEFAULT,         в_какой_заказ, какое_блюдо);

END
$pr$;


-- Procedure #10
-- Add discount by action to order
CREATE OR REPLACE PROCEDURE добавить_в_заказ_скидку_акции(

    в_какой_заказ         int
  , скидку_какой_акции    int

)
LANGUAGE plpgsql
AS
$pr$
DECLARE

    статус_заказа_для_скидки    int = (SELECT
                                           статус_заказа 
                                       FROM заказ
                                       WHERE id_заказа = в_какой_заказ);

    уже_выписан_счёт            bool = (статус_заказа_для_скидки > 1);

    имя_статуса                 varchar = (SELECT
                                               имя_статуса_заказа
                                           FROM статус_заказа
                                           WHERE id_статуса_заказа = статус_заказа_для_скидки);

BEGIN

    IF уже_выписан_счёт
        THEN
            RAISE NOTICE 'Заказ #% в статусе "%"! --> Добавление скидки запрещено!', в_какой_заказ, имя_статуса;
            RETURN;
    END IF;

    UPDATE заказ
    SET акция_на_заказ = скидку_какой_акции
    WHERE id_заказа = в_какой_заказ;

END
$pr$;


-- Procedure #11
-- Add discount by guest card to order
CREATE OR REPLACE PROCEDURE добавить_в_заказ_скидку_карты(

    в_какой_заказ         int
  , скидку_какой_карты    int

)
LANGUAGE plpgsql
AS
$pr$
DECLARE

    статус_заказа_для_скидки    int = (SELECT
                                           статус_заказа 
                                       FROM заказ
                                       WHERE id_заказа = в_какой_заказ);

    уже_выписан_счёт            bool = (статус_заказа_для_скидки > 1);

    имя_статуса                 varchar = (SELECT
                                               имя_статуса_заказа
                                           FROM статус_заказа
                                           WHERE id_статуса_заказа = статус_заказа_для_скидки);
BEGIN

    IF уже_выписан_счёт
        THEN
            RAISE NOTICE 'Заказ #% в статусе "%"! --> Добавление скидки запрещено!', в_какой_заказ, имя_статуса;
        RETURN;
    END IF;

    UPDATE заказ
    SET гостевая_карта_скидок = скидку_какой_карты
    WHERE id_заказа = в_какой_заказ;

END
$pr$;


/*


                                                                 C O M M E N T A R Y   T O   P R O C E D U R E   "заказы_в_дате"()




                                                 1. P R E E L E M E N T S   ( P A R T S )   O F   T H E   D I A G R A M   F O R   O N E   O R D E R

                                                    T O   C O N S T R U C T   M O R E   G E N E R I C   E L E M E N T S   O F   O R D E R   L I N E

                                  ( P R E   L I N E | L I N E   B E F O R E | L I N E   I N S I D E | L I N E   A F T E R | T I M E   A R R O W | N E W   L I N E )





                       Before Scale                                                Inside Scale                                                                    After Scale
                        (pre_line)                                     (line_before|line_inside|line_after)                                                   (time_arrow|new_line)

                     │◀------------▶│   │◀--------------------│◀──────────────────────────────────────────────▶│-----------------------------------------▶│   │◀------------------▶│
                     │              │   │                     │                                                │                                          │   │                    │
                     │              │   │                     │                                                │                                          │   │                    │
                     │              │   │                     │  Before Order │   │        Inside Order        │                                          │   │                    │
                     │              │   │                     │ (line_before) │   │       (line_inside)        │                                          │   │                    │
                     │              │   │                     │               │   │                            │                                          │   │                    │
                     │              │   │◀--------------------│◀─────────────▶│   │◀──────────────────────────▶│-----------------------------------------▶│   │                    │
                     │              │   │                     │               │   │                            │                                          │   │                    │
                     │              │   │                     │               │   │                            │                                          │   │                    │
                     │              │   │                     │               │   │                            │   │             After Order              │   │                    │
                     │              │   │                     │               │   │                            │   │            (line_after)              │   │                    │
                     │              │   │                     │               │   │                            │   │                                      │   │                    │
                     │              │   │                     │               │   │                            │   │◀------------------------------------▶│   │                    │
                     │              │   │                                                                                                                 │   │                    │
                     │                                    End of             Start of                          End of                                                              │
                     │              00:00             Previous Order          Order                            Order               Current Time           24:00                    │
                     │                ▼                     ▼                   ▼                                ▼                      ▼                   ▼                      │
                     │              │   │                 │   │               │   │                            │   │                  │   │               │   │                    │
                     ┌──────────────┐   ┌─────────────────────────────────────┐   ┌───────────────────────────────────────────────────────────────────────┐   ┌─────────┬──────────┐
                     │ part_0       │   │ part_1                              │   │ part_3                                                                │   │  arrow  │    nl    │
                     └──────────────┘   └─────────────────────┬───────────────┤   ├───────────────────────────────────────────────────┬───────────────────┘   └─────────┴──────────┘
                                                              │ part_2        │   │ part_4                                            │
                                                              └───────────────┘   ├────────────────────────────┬───┬──────────────────┴───────────────────┐
                                                                                  │ part_5                     │   │ part_6                               │
                                                                                  └────────────────────────────┘   ├──────────────────┬───────────────────┤
                                                                                                                   │ part_7           │ part_8            │
                                                                                                                   └──────────────────┴───┬───────────────┤
                                                                                                                                          │ part_9        │
                                                                                                                                          └───────────────┘






                                                        2. U S I N G   S E T   O F   R O W S   "символ_между"(сверху, снизу, между)   A S   A   F U N C T I O N

                                                                           T O   G E T   C H A R A C T E R S   O F   T H E   B O R D E R

                                                                                    B E T W E E N   A D J A C E N T   T A B L E S


                          ──────────────────────────────────────────────────────┬─────┬────────
                             Characters of Raw Version of Line "Строка 01 верх" │     │
                "сверху":         of the Table Above (Upper Characters)         │──┬──│ . . .                              ────────────────────────────────────────────────────────┬─────┬────────
                                                                                │  │  │                                       Characters of Final Version of Line "Строка 01 верх" │  │  │
                           ─────────────────────────────────────────────────────┼─────┼────────    ---------▶    "между":      of the Table (Border Between Two Adjacent Tables)   │──┼──│ . . .
                             Characters of Raw Version of Line "Строка 01 верх" │     │                                                                                            │  │  │
                 "снизу":         of the Table Below (Lower Characters)         │──┬──│ . . .                              ────────────────────────────────────────────────────────┴─────┴────────
                                                                                │  │  │
                           ─────────────────────────────────────────────────────┴─────┴────────




                                                                                               © 2022 Yaroslav Kozlov



*/


-- Procedure #12
-- Report on orders in a date
CREATE OR REPLACE PROCEDURE заказы_в_дате(

    в_какой_дате     date     DEFAULT CURRENT_DATE

)
LANGUAGE plpgsql
AS
$pr$
DECLARE

    текущая_дата             bool = (в_какой_дате = CURRENT_DATE);

    indent                   constant int = 16;
    diagram_wide             constant int = 24 * 8;
    title                    constant varchar = строка_на_центр(  concat(  'З А К А З Ы'
                                                                , CASE
                                                                      WHEN текущая_дата
                                                                          THEN '   С Е Г О Д Н Я'
                                                                          ELSE ''
                                                                      END)
                                                                , diagram_wide) || E'\n\n';

    header                  varchar;
    информация              varchar;
    отчёт                   varchar;

    открытые_заказы         int[] = (SELECT
                                         array_agg(id_заказа ORDER BY id_заказа)
                                     FROM заказ
                                     WHERE время_заказа::date = в_какой_дате
                                           AND
                                           статус_заказа = 1);

    открытых_заказов       int = coalesce(array_length(открытые_заказы, 1), 0);

    ожидают_оплаты         int[] = (SELECT
                                        array_agg(id_заказа ORDER BY id_заказа)
                                    FROM заказ
                                    WHERE время_заказа::date = в_какой_дате
                                          AND
                                          статус_заказа = 2);

    заказов_ожид_оплаты    int = coalesce(array_length(ожидают_оплаты, 1), 0);

    закрытые_заказы        int[] = (SELECT
                                        array_agg(id_заказа ORDER BY id_заказа)
                                    FROM заказ
                                    WHERE время_заказа::date = в_какой_дате
                                          AND
                                          статус_заказа = 3);

    закрытых_заказов       int = coalesce(array_length(закрытые_заказы, 1), 0);

    общая_выручка         numeric(12, 2) = coalesce(  (SELECT
                                                           общая_выручка_за_день
                                                       FROM ve_выручка_за_день
                                                       WHERE дата = в_какой_дате
                                                       LIMIT 1)

                                                     , 0 );

    общ_выр_длина         int = char_length(число_с_пробелами(общая_выручка));

    ср_общ_выручка        numeric(12, 2) = coalesce(  (SELECT
                                                           ср_общ_выр_за_заказ
                                                       FROM ve_выручка_за_день
                                                       WHERE дата = в_какой_дате
                                                       LIMIT 1)

                                                     , 0 );

    рейтинг               varchar = '';

    сотрудники_даты       int[] = (WITH
                                       строки AS (
                                           SELECT DISTINCT ON (сотрудник, выручка_сотрудника_за_день)
                                               сотрудник
                                             , выручка_сотрудника_за_день AS выручка

                                           FROM ve_выручка_за_день
                                           WHERE дата = в_какой_дате)

                                   SELECT
                                       array_agg(сотрудник ORDER BY выручка DESC)
                                   FROM строки);

    есть_закр_заказы      bool = (сотрудники_даты IS NOT NULL);

    заказы_сотрудника     int[];
    выр_от_сотрудника     numeric(12, 2);

BEGIN

    IF есть_закр_заказы
        THEN

            FOR i IN 1..array_length(сотрудники_даты, 1)
            LOOP

                заказы_сотрудника = (SELECT
                                         array_agg(заказ)
                                     FROM ve_выручка_за_день
                                     WHERE дата      = в_какой_дате
                                           AND
                                           сотрудник = сотрудники_даты[i]);

                выр_от_сотрудника = (SELECT
                                         выручка_сотрудника_за_день
                                     FROM ve_выручка_за_день
                                     WHERE дата      = в_какой_дате
                                           AND
                                           сотрудник = сотрудники_даты[i]
                                     LIMIT 1);

                рейтинг = concat( рейтинг
                                , repeat(' ', indent)
                                , format('%*s', (diagram_wide / 2), concat(полное_имя_сотрудника(сотрудники_даты[i]), ' (', trim(to_char(сотрудники_даты[i], '00')), '):'))
                                , format(' %*s', общ_выр_длина, число_с_пробелами(выр_от_сотрудника))
                                , ' '
                                , строка_чисел_массива('Заказы', заказы_сотрудника)
                                , E'\n');

            END LOOP;

    END IF;

    header = concat(  E'\n\n'
                    , repeat(' ', indent), title
                    , repeat(' ', indent), строка_на_центр(дата_словами(в_какой_дате), diagram_wide), E'\n\n\n\n'
                    , repeat(' ', indent), format('%*s', (diagram_wide / 2), E'Открытых заказов (      ):'), to_char(открытых_заказов,    '99'), ' ', строка_чисел_массива('Заказы', открытые_заказы), E'\n'
                    , repeat(' ', indent), format('%*s', (diagram_wide / 2), E'  Ожидают оплаты ( ░░░░ ):'), to_char(заказов_ожид_оплаты, '99'), ' ', строка_чисел_массива('Заказы', ожидают_оплаты ), E'\n'
                    , repeat(' ', indent), format('%*s', (diagram_wide / 2), E'Зыкрытых заказов ( ████ ):'), to_char(закрытых_заказов,    '99'), ' ', строка_чисел_массива('Заказы', закрытые_заказы), E'\n\n\n'
                    , repeat(' ', indent), format('%*s ', (diagram_wide / 2), E'Общая выручка за день:'), число_с_пробелами(общая_выручка), ' (в среднем ', число_с_пробелами(ср_общ_выручка), E' за заказ)\n\n'
                    , рейтинг
                    , E'\n\n');

    информация = concat(  E'\n\n'
                        , repeat(' ', indent), repeat(' ', 8), E'┌───────┐\n'
                        , repeat(' ', indent), repeat(' ', 8), E'│ 0001◀─┼─── Номер заказа\n'
                        , repeat(' ', indent), repeat(' ', 8), E'│ (05)◀─┼─── Сотрудник\n'
                        , repeat(' ', indent), repeat(' ', 8), E'│ СЧЁТ◀─┼┬── Статус заказа:  ОТКР  ──▷  СЧЁТ  ──▷  ЗАКР\n'
                        , repeat(' ', indent), repeat(' ', 8), E'│ ░░░░◀─┼┘                         ──▷  ░░░░  ──▷  ████\n'
                        , repeat(' ', indent), repeat(' ', 8), E'└───────┘\n\n\n\n');


    -- Getting orders of one day into temporary table to process them later by the looong WITH... query
    CREATE TEMP TABLE заказ_в_дату ON COMMIT DROP AS
        SELECT
            id_заказа                        AS заказ
          , сотрудник
          , столик
          , время_заказа::date               AS дата
          , время_заказа::time               AS начало
          , время_освобождения_столика::time AS конец
          , статус_заказа                    AS статус

        FROM заказ
        WHERE время_заказа::date = в_какой_дате
        ORDER BY дата, столик;  -- Useful index here --> заказ((время_заказа::date), столик)

    WITH
        список_постоянных(  деления
                          , часы
                          , подпись
                          , отступ
                          , символов_в_часе
                          , ширина_диаграммы ) AS (

            VALUES       (  E'|       |       |       |       |       |       |       |       |       |       |       |       |       |       |       |       |       |       |       |       |       |       |       |       |\n'

                          , E'0       1       2       3       4       5       6       7       8       9      10      11      12      13      14      15      16      17      18      19      20      21      22      23      24\n'

                          , '© 2022 Ярослав Козлов'

                          , 16

                          , 8

                          , 24 * 8))

      , текущее_время_символами AS (
            SELECT
                (символов_в_часе * (extract(HOUR FROM CURRENT_TIME) + extract(MINUTE FROM CURRENT_TIME) / 60.0))::int AS символов_до

            FROM список_постоянных)

      , указатель_текущего_времени AS (
            SELECT
                concat(  repeat(' ', пст.отступ    )
                       , repeat(' ', вс.символов_до)
                       , E'▲\n'

                       , repeat(' ', пст.отступ - 2)
                       , repeat(' ', вс.символов_до)
                       , to_char(CURRENT_TIMESTAMP, E'HH24:MI\n')

                       , repeat(' ', пст.отступ - 2)
                       , repeat(' ', вс.символов_до)
                       , E'время \n'

                       , repeat(' ', пст.отступ - 3)
                       , repeat(' ', вс.символов_до)
                       , E'статусов \n') AS указатель

            FROM  список_постоянных       AS пст
                , текущее_время_символами AS вс)


      , времена_заказа_символами AS (
            SELECT
                зд.заказ
              , (п.символов_в_часе * (extract(HOUR FROM зд.начало) + extract(MINUTE FROM зд.начало) / 60.0))::int AS символов_до_начала
              , (п.символов_в_часе * (extract(HOUR FROM зд.конец ) + extract(MINUTE FROM зд.конец ) / 60.0))::int AS символов_до_конца

            FROM заказ_в_дату AS зд, список_постоянных AS п
            ORDER BY заказ)

      , стол_с_заказом_в_дате AS (
            SELECT
                дата
              , столик

            FROM заказ_в_дату
            GROUP BY дата, столик   -- Potentialy useful index here -> idx_08 (): заказ(время_заказа::date, столик)
            ORDER BY дата, столик)  -- Presorting for subsequent operations using this set of rows

      , стол_с_заказом_и_соседи AS (
            SELECT
                дата
              , столик
              , lag(столик ) OVER окно_сорт_столиков AS столик_до
              , lead(столик) OVER окно_сорт_столиков AS столик_после

            FROM стол_с_заказом_в_дате
            WINDOW окно_сорт_столиков AS (PARTITION BY дата ORDER BY столик)
            ORDER BY дата, столик)  -- Presorting for subsequent operations using this set of rows

      , стол_с_заказом_параметры AS (
                    SELECT
                        сз.столик
                      , сз.столик_до
                      , сз.столик_после

                      , зд.заказ
                      , lag(зд.заказ ) OVER окно_заказов_столика AS заказ_до
                      , lead(зд.заказ) OVER окно_заказов_столика AS заказ_после

                      , зд.дата
                      , зд.начало
                      , зд.сотрудник
                      , зд.статус

                    FROM стол_с_заказом_и_соседи AS сз
                    INNER JOIN заказ_в_дату      AS зд ON зд.дата   = сз.дата
                                                          AND
                                                          зд.столик = сз.столик   -- Useful presorting here -> зд(дата, столик)
                    WINDOW окно_заказов_столика AS (PARTITION BY зд.дата, зд.столик ORDER BY зд.начало)   -- Potentialy useful index here -> idx_13 (): заказ(время_заказа::date, столик, время_заказа::time)
                    ORDER BY заказ)  -- Presorting for subsequent operations using this set of rows

              , столик_параметры AS (
                    SELECT
                        сз.столик
                      , сз.столик_до
                      , сз.столик_после

                      , сз.заказ
                      , сз.заказ_до
                      , сз.заказ_после

                      , сз.дата
                      , сз.начало

                      , вс.символов_до_начала
                      , вс.символов_до_конца

                      , (SELECT вс1.символов_до_начала
                         FROM времена_заказа_символами AS вс1
                         WHERE вс1.заказ = сз.заказ_до)    AS симв_до_пред_нач -- Useful presorting here --> ORDER BY вс.заказ

                      , (SELECT вс1.символов_до_конца
                         FROM времена_заказа_символами AS вс1
                         WHERE вс1.заказ = сз.заказ_до)    AS симв_до_пред_кон

                      , (SELECT вс1.символов_до_начала
                         FROM времена_заказа_символами AS вс1
                         WHERE вс1.заказ = сз.заказ_после) AS симв_до_след_нач

                      , (SELECT вс1.символов_до_конца
                         FROM времена_заказа_символами AS вс1
                         WHERE вс1.заказ = сз.заказ_после) AS симв_до_след_кон

                      , сз.сотрудник
                      , сз.статус

                    FROM стол_с_заказом_параметры      AS сз
                    LEFT JOIN времена_заказа_символами AS вс ON вс.заказ = сз.заказ -- Useful presorting here --> ORDER BY сз.заказ
                    ORDER BY дата, столик, символов_до_конца)  -- Presorting for subsequent operations using this set of rows

              , предэлементы AS (
                    SELECT
                        сп.заказ
                      , сп.дата
                      , сп.начало
                      , сп.столик
                      , сп.столик_до


                                                        -- PARTS --



                      -- part_0:

                      , repeat(' ', пст.отступ)                                                  AS part_0_space
                      , concat('    Столик #', trim(to_char(сп.столик, '00')), '  ')             AS part_0_info_0
                      , concat('  * Столик #', trim(to_char(сп.столик, '00')), '  ')             AS part_0_info_1
                      ,        '     │Заказ     '                                                AS part_0_info_2
                      , concat('     │'
                               , trim(  to_char((SELECT заказ
                                               FROM столик_параметры AS сп1
                                               WHERE сп1.дата = сп.дата
                                                     AND
                                                     сп1.столик = сп.столик
                                                     AND
                                                     сп1.символов_до_конца IS NULL)  -- Usefull presorting here --> ORDER BY сп(дата, столик, символов_до_конца)
                                      , '0000'))
                      , '      ')                                              AS part_0_info_3

                      , concat('     │', CASE (SELECT статус
                                               FROM столик_параметры AS сп1
                                               WHERE сп1.дата = сп.дата
                                                     AND
                                                     сп1.столик = сп.столик
                                                     AND
                                                     сп1.символов_до_конца IS NULL)  -- Usefull presorting here --> ORDER BY сп(дата, столик, символов_до_конца)
                                            WHEN 1 THEN 'ОТКР  '
                                            WHEN 2 THEN 'СЧЁТ  '
                                            WHEN 3 THEN 'ЗАКР  '
                                            ELSE        '????  '
                                         END, '    ')                                             AS part_0_info_4





                      -- part_1:

                      , repeat(' ', сп.символов_до_начала - 1)                                   AS part_1_space
                      , repeat('─', сп.символов_до_начала - 1)                                   AS part_1_full
                      , repeat('-', сп.символов_до_начала - 1)                                   AS part_1_dash

                      , concat(  repeat('╶', сп.символов_до_начала - 2)
                               , CASE
                                     WHEN сп.символов_до_начала > 1
                                         THEN '▷'
                                     ELSE     ''
                                 END)                                                             AS part_1_dash_arrow


                      -- part_2:

                      , repeat(' ', сп.символов_до_начала - сп.симв_до_пред_кон - 1)              AS part_2_space
                      , repeat('─', сп.символов_до_начала - сп.симв_до_пред_кон - 1)              AS part_2_full
                      , repeat('-', сп.символов_до_начала - сп.симв_до_пред_кон - 1)              AS part_2_dash

                      , concat(  repeat('╶', сп.символов_до_начала - сп.симв_до_пред_кон - 2)
                               , CASE
                                     WHEN сп.символов_до_начала > сп.симв_до_пред_кон + 1
                                         THEN '▷'
                                     ELSE     ''
                                 END)                                                             AS part_2_dash_arrow


                      -- part_3:

                      , repeat('─', 24 * 8 - сп.символов_до_начала - 1)                           AS part_3_full
                      , repeat('-', 24 * 8 - сп.символов_до_начала - 1)                           AS part_3_dash

                      , concat(  ' ', trim(to_char(сп.заказ, '0000')), '  '
                               , repeat(' ', 23 * 8 - сп.символов_до_начала))                     AS part_3_info_1

                      , concat(  ' (', trim(to_char(сп.сотрудник, '00')), ')  '
                               , repeat(' ', 23 * 8 - сп.символов_до_начала))                     AS part_3_info_2

                      , concat(  CASE сп.статус
                                     WHEN 1 THEN ' ОТКР  '
                                     WHEN 2 THEN ' СЧЁТ  '
                                     WHEN 3 THEN ' ЗАКР  '
                                     ELSE        ' ????  '
                                 END
                               , repeat(' ', 23 * 8 - сп.символов_до_начала))                     AS part_3_info_3

                      , concat(  CASE сп.статус
                                     WHEN 1 THEN '       '
                                     WHEN 2 THEN ' ░░░░  '
                                     WHEN 3 THEN ' ████  '
                                     ELSE        ' ????  '
                                 END
                               , repeat(' ', 23 * 8 - сп.символов_до_начала))                     AS part_3_info_4



                      -- part_4:

                      , repeat('─', тв.символов_до - сп.символов_до_начала - 1)                   AS part_4_full

                      , concat(  ' ', trim(to_char(сп.заказ, '0000')), '  '
                               , repeat(' ', тв.символов_до - сп.символов_до_начала - 8))         AS part_4_info_1

                      , concat(  ' (', trim(to_char(сп.сотрудник, '00')), ')  '
                               , repeat(' ', тв.символов_до - сп.символов_до_начала - 8))         AS part_4_info_2

                      , concat(  CASE сп.статус
                                     WHEN 1 THEN ' ОТКР  '
                                     WHEN 2 THEN ' СЧЁТ  '
                                     WHEN 3 THEN ' ЗАКР  '
                                     ELSE        ' ????  '
                                 END
                               , repeat(' ', тв.символов_до - сп.символов_до_начала - 8))         AS part_4_info_3

                      , concat(  CASE сп.статус
                                     WHEN 1 THEN '       '
                                     WHEN 2 THEN ' ░░░░  '
                                     WHEN 3 THEN ' ████  '
                                     ELSE        ' ????  '
                                 END
                               , repeat(' ', тв.символов_до - сп.символов_до_начала - 8))         AS part_4_info_4



                      -- part_5:

                      , repeat('─', сп.символов_до_конца - сп.символов_до_начала - 1)             AS part_5_full

                      , concat(  ' ', trim(to_char(сп.заказ, '0000')), '  '
                               , repeat(' ', сп.символов_до_конца - сп.символов_до_начала - 8))   AS part_5_info_1

                      , concat(  ' (', trim(to_char(сп.сотрудник, '00')), ')  '
                               , repeat(' ', сп.символов_до_конца - сп.символов_до_начала - 8))   AS part_5_info_2

                      , concat(  CASE сп.статус
                                     WHEN 1 THEN ' ОТКР  '
                                     WHEN 2 THEN ' СЧЁТ  '
                                     WHEN 3 THEN ' ЗАКР  '
                                     ELSE        ' ????  '
                                 END
                               , repeat(' ', сп.символов_до_конца - сп.символов_до_начала - 8))   AS part_5_info_3

                      , concat(  CASE сп.статус
                                     WHEN 1 THEN '       '
                                     WHEN 2 THEN ' ░░░░  '
                                     WHEN 3 THEN ' ████  '
                                     ELSE        ' ????  '
                                 END
                               , repeat(' ', сп.символов_до_конца - сп.символов_до_начала - 8))   AS part_5_info_4


                      -- part_6:

                      , repeat(' ', 24 * 8 - сп.символов_до_конца - 1)                            AS part_6_space
                      , repeat('─', 24 * 8 - сп.символов_до_конца - 1)                            AS part_6_full
                      , repeat('-', 24 * 8 - сп.символов_до_конца - 1)                            AS part_6_dash

                      , concat(  repeat('╶', 24 * 8 - сп.символов_до_конца - 2)
                               , CASE
                                     WHEN сп.символов_до_конца < 24 * 8 - 2
                                         THEN '▷'
                                     ELSE     ''
                                 END)                                                             AS part_6_dash_arrow


                      -- part_7:

                      , repeat(' ', тв.символов_до - сп.символов_до_конца - 1)                    AS part_7_space
                      , repeat('─', тв.символов_до - сп.символов_до_конца - 1)                    AS part_7_full
                      , repeat('-', тв.символов_до - сп.символов_до_конца - 1)                    AS part_7_dash

                      , concat(  repeat('╶', тв.символов_до - сп.символов_до_конца - 2)
                               , CASE
                                     WHEN тв.символов_до > сп.символов_до_конца + 1
                                         THEN '▷'
                                     ELSE     ''
                                 END)                                                             AS part_7_dash_arrow


                      -- part_8:

                      , repeat('-', 24 * 8 - тв.символов_до)                                      AS part_8_dash


                      -- part_9:

                      , repeat(' ', 24 * 8 - тв.символов_до - 1)                                  AS part_9_space
                      , repeat('─', 24 * 8 - тв.символов_до - 1)                                  AS part_9_full
                      , repeat('-', 24 * 8 - тв.символов_до - 1)                                  AS part_9_dash


                      -- others

                      , '───▶ часы   '                                                            AS arrow
                      , E'\n'                                                                     AS nl



                                                      -- C O N D I T I O N S  --


                      , (сп.дата = CURRENT_DATE)                                                  AS текущая_дата
                      , (сп.симв_до_пред_кон IS NULL)                                             AS нет_предшествующих_заказов
                      , (сп.символов_до_конца IS NULL)                                            AS заказ_не_окончен
                      , (тв.символов_до > сп.символов_до_начала + 7)                              AS текущ_вр_после_инфополя
                      , (тв.символов_до <= сп.символов_до_начала)                                 AS текущ_вр_до_инфополя
                      , (сп.симв_до_след_нач IS NOT NULL)                                         AS есть_следующий_заказ
                      , (сп.симв_до_след_нач IS NULL)                                             AS следующих_заказов_нет
                      , (тв.символов_до > сп.символов_до_конца)                                   AS текущ_вр_после_конца_заказа
                      , (сп.символов_до_начала = 0)                                               AS заказ_с_0_часов
                      , (сп.символов_до_начала = сп.симв_до_пред_кон)                             AS заказ_сразу_за_предыдущим
                      , (сп.символов_до_конца < 24 * 8)                                           AS конец_заказа_до_24_часов

                      , exists(SELECT 1
                               FROM столик_параметры AS сп1
                               WHERE сп1.дата = сп.дата
                                     AND
                                     сп1.столик = сп.столик
                                     AND
                                     сп1.символов_до_конца IS NULL)                               AS столик_занят  -- Usefull presorting here --> ORDER BY сп(дата, столик, символов_до_конца)

                      , (сп.столик_до IS NULL)                                                    AS выше_столиков_нет
                      , (сп.столик_после IS NULL)                                                 AS ниже_столиков_нет
                      , (сп.столик_до IS NOT NULL)                                                AS выше_есть_столик
                      , (сп.столик_после IS NOT NULL)                                             AS ниже_есть_столик



                    FROM столик_параметры AS сп, текущее_время_символами AS тв, список_постоянных AS пст)

              , элементы AS (
                    SELECT
                        пэ.заказ
                      , пэ.дата
                      , пэ.начало
                      , пэ.столик
                      , пэ.столик_до
                      , пэ.выше_столиков_нет
                      , пэ.выше_есть_столик
                      , пэ.ниже_есть_столик
                      , параметр.строка

                      , CASE 
                            WHEN пэ.нет_предшествующих_заказов
                                THEN CASE
                                         WHEN пэ.столик_занят
                                             THEN CASE параметр.строка
                                                      WHEN 'строка 1' THEN part_0_info_1
                                                      WHEN 'строка 2' THEN part_0_info_2
                                                      WHEN 'строка 3' THEN part_0_info_3
                                                      WHEN 'строка 4' THEN part_0_info_4
                                                      ELSE                 part_0_space
                                                  END
                                         ELSE CASE параметр.строка
                                                  WHEN 'строка 1' THEN part_0_info_0
                                                  ELSE                 part_0_space
                                              END
                                     END
                            ELSE ''
                        END AS pre_line

                      , CASE
                            WHEN пэ.нет_предшествующих_заказов
                                THEN CASE параметр.строка
                                         WHEN 'строка 00 верх' THEN '┌'
                                         WHEN 'строка 01 верх' THEN '┌'
                                         WHEN 'строка 5 низ'   THEN '└'
                                         ELSE                       '│'
                                     END
                            ELSE ''
                        END AS cross_point_0

                      , CASE
                            WHEN пэ.нет_предшествующих_заказов
                                THEN CASE параметр.строка
                                         WHEN 'строка 00 верх'  THEN part_1_full
                                         WHEN 'строка 01 верх'  THEN part_1_dash
                                         WHEN 'строка 5 низ'    THEN part_1_full
                                         WHEN 'строка 2'        THEN part_1_dash_arrow
                                         ELSE                        part_1_space
                                     END
                            ELSE     CASE параметр.строка
                                         WHEN 'строка 00 верх' THEN part_2_full
                                         WHEN 'строка 01 верх' THEN part_2_dash
                                         WHEN 'строка 5 низ'   THEN part_2_full
                                         WHEN 'строка 2'       THEN part_2_dash_arrow
                                         ELSE                       part_2_space
                                     END
                        END AS line_before

                      , CASE
                            WHEN заказ_с_0_часов
                                 OR
                                 заказ_сразу_за_предыдущим
                                THEN ''
                            ELSE CASE параметр.строка
                                     WHEN 'строка 00 верх' THEN '┬'
                                     WHEN 'строка 01 верх' THEN '┬'
                                     WHEN 'строка 5 низ'   THEN '┴'
                                     ELSE                       '│'
                                 END
                        END AS cross_point_begin

                      , CASE 
                            WHEN пэ.заказ_не_окончен
                                THEN CASE
                                         WHEN пэ.текущая_дата
                                             THEN CASE
                                                      WHEN пэ.текущ_вр_после_инфополя
                                                          THEN CASE параметр.строка
                                                                   WHEN 'строка 00 верх' THEN concat(part_4_full,   '┬', part_9_full )
                                                                   WHEN 'строка 01 верх' THEN concat(part_4_full,   '┬', part_9_dash )
                                                                   WHEN 'строка 1'       THEN concat(part_4_info_1, '│', part_9_space)
                                                                   WHEN 'строка 2'       THEN concat(part_4_info_2, '│', part_9_space)
                                                                   WHEN 'строка 3'       THEN concat(part_4_info_3, '│', part_9_space)
                                                                   WHEN 'строка 4'       THEN concat(part_4_info_4, '│', part_9_space)
                                                                   WHEN 'строка 5 низ'   THEN concat(part_4_full,   '┴', part_9_full )
                                                                   ELSE ''
                                                               END
                                                      WHEN пэ.текущ_вр_до_инфополя
                                                          THEN CASE параметр.строка
                                                                   WHEN 'строка 00 верх' THEN part_3_full
                                                                   WHEN 'строка 01 верх' THEN part_3_dash
                                                                   WHEN 'строка 1'       THEN part_3_info_1
                                                                   WHEN 'строка 2'       THEN part_3_info_2
                                                                   WHEN 'строка 3'       THEN part_3_info_3
                                                                   WHEN 'строка 4'       THEN part_3_info_4
                                                                   WHEN 'строка 5 низ'   THEN part_3_full
                                                                   ELSE ''
                                                               END
                                                      ELSE     CASE параметр.строка
                                                                   WHEN 'строка 00 верх' THEN part_3_full
                                                                   WHEN 'строка 01 верх' THEN concat(part_4_full, part_8_dash )
                                                                   WHEN 'строка 1'       THEN part_3_info_1
                                                                   WHEN 'строка 2'       THEN part_3_info_2
                                                                   WHEN 'строка 3'       THEN part_3_info_3
                                                                   WHEN 'строка 4'       THEN part_3_info_4
                                                                   WHEN 'строка 5 низ'   THEN part_3_full
                                                                   ELSE ''
                                                               END
                                                  END
                                         ELSE     CASE параметр.строка
                                                      WHEN 'строка 00 верх' THEN part_3_full
                                                      WHEN 'строка 01 верх' THEN part_3_full
                                                      WHEN 'строка 1'       THEN part_3_info_1
                                                      WHEN 'строка 2'       THEN part_3_info_2
                                                      WHEN 'строка 3'       THEN part_3_info_3
                                                      WHEN 'строка 4'       THEN part_3_info_4
                                                      WHEN 'строка 5 низ'   THEN part_3_full
                                                      ELSE ''
                                                  END
                                     END
                            ELSE     CASE параметр.строка
                                         WHEN 'строка 00 верх' THEN part_5_full
                                         WHEN 'строка 01 верх' THEN part_5_full
                                         WHEN 'строка 1'       THEN part_5_info_1
                                         WHEN 'строка 2'       THEN part_5_info_2
                                         WHEN 'строка 3'       THEN part_5_info_3
                                         WHEN 'строка 4'       THEN part_5_info_4
                                         WHEN 'строка 5 низ'   THEN part_5_full
                                         ELSE ''
                                     END
                        END AS line_inside

                      , CASE
                            WHEN конец_заказа_до_24_часов
                                THEN CASE параметр.строка
                                         WHEN 'строка 00 верх' THEN '┬'
                                         WHEN 'строка 01 верх' THEN '┬'
                                         WHEN 'строка 5 низ'   THEN '┴'
                                         ELSE                       '│'
                                     END
                            ELSE ''
                        END AS cross_point_end

                      , CASE
                            WHEN пэ.заказ_не_окончен
                                 OR
                                 пэ.есть_следующий_заказ
                                THEN ''
                            ELSE CASE
                                     WHEN пэ.текущая_дата
                                         THEN CASE
                                                  WHEN пэ.текущ_вр_после_конца_заказа
                                                      THEN CASE параметр.строка
                                                                   WHEN 'строка 00 верх' THEN concat(part_7_full,       '┬', part_9_full )
                                                                   WHEN 'строка 01 верх' THEN concat(part_7_dash,       '┬', part_9_dash )
                                                                   WHEN 'строка 1'       THEN concat(part_7_space,      '│', part_9_space)
                                                                   WHEN 'строка 2'       THEN concat(part_7_dash_arrow, '│', part_9_space)
                                                                   WHEN 'строка 3'       THEN concat(part_7_space,      '│', part_9_space)
                                                                   WHEN 'строка 4'       THEN concat(part_7_space,      '│', part_9_space)
                                                                   WHEN 'строка 5 низ'   THEN concat(part_7_full,       '┴', part_9_full )
                                                                   ELSE ''
                                                               END
                                                      ELSE     CASE параметр.строка
                                                                   WHEN 'строка 00 верх' THEN part_6_full
                                                                   WHEN 'строка 01 верх' THEN part_6_dash
                                                                   WHEN 'строка 1'       THEN part_6_space
                                                                   WHEN 'строка 2'       THEN part_6_space
                                                                   WHEN 'строка 3'       THEN part_6_space
                                                                   WHEN 'строка 4'       THEN part_6_space
                                                                   WHEN 'строка 5 низ'   THEN part_6_full
                                                                   ELSE ''
                                                               END
                                              END
                                     ELSE CASE параметр.строка
                                                  WHEN 'строка 00 верх' THEN part_6_full
                                                  WHEN 'строка 01 верх' THEN part_6_dash
                                                  WHEN 'строка 1'       THEN part_6_space
                                                  WHEN 'строка 2'       THEN part_6_dash_arrow
                                                  WHEN 'строка 3'       THEN part_6_space
                                                  WHEN 'строка 4'       THEN part_6_space
                                                  WHEN 'строка 5 низ'   THEN part_6_full
                                                  ELSE ''
                                          END
                                 END
                        END AS line_after

                      , CASE
                            WHEN пэ.заказ_не_окончен
                                 OR
                                 пэ.следующих_заказов_нет
                                THEN CASE параметр.строка
                                         WHEN 'строка 00 верх' THEN '┐'
                                         WHEN 'строка 01 верх' THEN '┐'
                                         WHEN 'строка 5 низ'   THEN '┴'
                                         ELSE                       '│'
                                     END
                            ELSE     ''
                        END AS cross_point_24

                      , CASE
                            WHEN пэ.заказ_не_окончен
                                 OR
                                 пэ.следующих_заказов_нет
                                THEN CASE параметр.строка
                                         WHEN 'строка 5 низ'
                                             THEN пэ.arrow
                                         ELSE     ''
                                     END
                            ELSE     ''
                        END AS time_arrow

                      , CASE
                            WHEN пэ.заказ_не_окончен
                                 OR
                                 пэ.следующих_заказов_нет
                                THEN пэ.nl
                            ELSE      ''
                         END AS new_line

                    FROM предэлементы AS пэ, текущее_время_символами AS тв, (VALUES ('строка 00 верх')
                                                                                  , ('строка 01 верх')
                                                                                  , ('строка 1'      )
                                                                                  , ('строка 2'      )
                                                                                  , ('строка 3'      )
                                                                                  , ('строка 4'      )
                                                                                  , ('строка 5 низ'  )) AS параметр(строка))


              , строка_заказа AS (
                    SELECT
                        дата
                      , начало
                      , столик
                      , столик_до
                      , строка
                      , выше_столиков_нет
                      , выше_есть_столик
                      , ниже_есть_столик

                      , concat(  pre_line
                               , cross_point_0
                               , line_before
                               , cross_point_begin
                               , line_inside
                               , cross_point_end
                               , line_after
                               , cross_point_24
                               , time_arrow
                               , new_line) AS кусок_строки

                    FROM элементы
                    ORDER BY  дата
                            , столик
                            , столик_до
                            , строка
                            , выше_столиков_нет
                            , выше_есть_столик
                            , ниже_есть_столик
                            , начало)  -- Presorting for subsequent operations using this set of rows


              , строка_столика AS (
                    SELECT
                        дата
                      , столик
                      , столик_до
                      , строка
                      , выше_столиков_нет

                      , CASE
                            WHEN строка = 'строка 00 верх'
                                 AND
                                 выше_есть_столик
                                THEN ''
                            WHEN строка = 'строка 5 низ'
                                 AND
                                 ниже_есть_столик
                                THEN ''
                            ELSE     string_agg(кусок_строки,'' ORDER BY начало)
                        END AS вся_строка

                    FROM строка_заказа
                    GROUP BY дата, столик, столик_до, строка, выше_столиков_нет, выше_есть_столик, ниже_есть_столик
                    ORDER BY дата, столик, строка)  -- Presorting for subsequent operations using this set of rows

              , номер_символа_строки(поз) AS (SELECT generate_series(1, 16 + 24 * 8 + 2))



              -- Set of rows to be used as a function to get characters for border between adjasent tables in a diagram

              , символ_между(сверху, снизу, между) AS (VALUES ( '-',   '-',   '-'   )
                                                            , ( '-',   '┬',   '┬'   )
                                                            , ( '-',   '─',   '─'   )

                                                            , ( '┬',   '-',   '┴'   )
                                                            , ( '┬',   '┬',   '┼'   )
                                                            , ( '┬',   '─',   '┴'   )

                                                            , ( '─',   '-',   '─'   )
                                                            , ( '─',   '┬',   '┬'   )
                                                            , ( '─',   '─',   '─'   )

                                                            , ( ' ',   ' ',   ' '   )
                                                            , ( '┐',   '┐',   '┤'   )
                                                            , ( '┌',   '┌',   '├'   )

                                                            , (E'\n', E'\n', E'\n'))

               , строка_столика_с_границей AS (
                     SELECT
                         сс.дата
                       , сс.столик
                       , сс.строка

                       , CASE
                             WHEN сс.строка = 'строка 01 верх'
                                  THEN CASE
                                           WHEN сс.выше_столиков_нет
                                               THEN ''
                                           ELSE
                                              (SELECT
                                                   string_agg(см.между, '' ORDER BY нс.поз) -- Useful presorting here --> нс(поз)
                                               FROM номер_символа_строки AS нс
                                               INNER JOIN символ_между   AS см ON см.сверху = (regexp_split_to_array(сс1.вся_строка, '')::text[])[нс.поз]
                                                                                  AND
                                                                                  см.снизу  = (regexp_split_to_array(сс.вся_строка,  '')::text[])[нс.поз]) -- Useful presorting here --> см(сверху, снизу)
                                       END
                             ELSE сс.вся_строка
                         END AS вся_строка

                     FROM строка_столика AS сс
                     LEFT JOIN строка_столика AS сс1 ON сс1.дата   = сс.дата
                                                        AND
                                                        сс1.столик = сс.столик_до
                                                        AND
                                                        сс1.строка = сс.строка  -- Potencially useful presorting here --> ORDER BY сс(дата, столик, строка)
                    ORDER BY сс.дата, сс.столик, сс.строка)  -- Presorting for subsequent operations using this set of rows

              , полоса_столика AS (
                    SELECT
                        дата
                      , столик
                      , string_agg(вся_строка, '' ORDER BY строка) AS все_строки_столика

                    FROM строка_столика_с_границей
                    GROUP BY дата, столик
                    ORDER BY дата, столик)

              , все_полосы AS (
                    SELECT
                        дата
                      , string_agg(все_строки_столика,'' ORDER BY столик) AS полосы

                    FROM полоса_столика
                    GROUP BY дата)

              , нижняя_часть AS (
                    SELECT
                        concat(  repeat(' ', п.отступ), п.деления
                               , repeat(' ', п.отступ), п.часы
                               , CASE
                                     WHEN текущая_дата
                                         THEN ук.указатель
                                     ELSE E'\n\n'
                                 END
                               , информация
                               , repeat(' ', п.отступ), строка_на_центр(п.подпись, п.ширина_диаграммы), E'\n\n\n') AS footer

                    FROM список_постоянных          AS п
                       , указатель_текущего_времени AS ук)

            SELECT
                concat(  header
                       , вп.полосы
                       , нч.footer) AS диаграмма
            INTO отчёт
            FROM все_полосы         AS вп
            CROSS JOIN нижняя_часть AS нч;


    RAISE INFO E'\n\n%\n\n', отчёт;

END
$pr$;


-- Procedure #13
-- Purchase a good
CREATE OR REPLACE PROCEDURE закупить_товар(

    какой_товар   int,
    количество    int

)
LANGUAGE plpgsql
AS
$pr$
DECLARE

    цена                  numeric(12, 2);
    общая_стоимость       numeric(12, 2);
    средства_ресторана    numeric(12, 2);

    название              varchar;
    ед_изм                varchar;

BEGIN

    цена = (SELECT цена_товара
            FROM товар_закупок
            WHERE id_товара = какой_товар);

    общая_стоимость = цена * количество;

    средства_ресторана = (SELECT все_деньги_ресторана
                          FROM деньги_ресторана);

    название = (SELECT имя_товара
                FROM товар_закупок
                WHERE id_товара = какой_товар);

    ед_изм = (SELECT единица_измерения
              FROM товар_закупок
              WHERE id_товара = какой_товар);


    IF NOT EXISTS (SELECT 1
                   FROM товар_закупок
                   WHERE id_товара = какой_товар)
        THEN

            RAISE NOTICE E'\n\nТовар с ID = % отсутствует! --> Проверьте корректность указанного идентификатора.\n\n', какой_товар;

        ELSE

            INSERT INTO доход_либо_расход(имя_операции,
                                     время_операции,
                                     сумма_дохода,
                                     сумма_расхода)

            VALUES                  (concat('Закупка товара "', название, '" в количестве ', количество, ' ', ед_изм),
                                     DEFAULT,
                                     NULL,
                                     общая_стоимость);

        CASE название

            -- Guest tables
            WHEN 'Стол'
                THEN

                    RAISE NOTICE 'Добавление столов в базу данных...';

                    -- Add tables
                    FOR i IN 1..количество
                    LOOP

                        INSERT INTO столик(id_столика)
                        VALUES           ((SELECT id_столика
                                           FROM столик
                                           ORDER BY id_столика DESC
                                           LIMIT 1) + 1);

                    END LOOP;

                    RAISE NOTICE E'Получено столов: %\n', количество;

            -- Proximity cards
            WHEN 'Ключ-карта'

                THEN

                    RAISE NOTICE 'Добавление ключ-карт в базу данных...';

                    -- Add proximity cards
                    FOR i IN 1..количество
                    LOOP
                        INSERT INTO ключ_карта_скуд DEFAULT VALUES;
                    END LOOP;

                    RAISE NOTICE E'Получено ключ-карт: %\n', количество;

            ELSE

        END CASE;

    END IF;

END
$pr$;


-- Procedure #14
--
CREATE OR REPLACE PROCEDURE заполнить_табель(

    какого_сотрудника    int    default null,
    за_какой_месяц       int    default null,
    какого_года          int    default null

)
LANGUAGE plpgsql
AS
$pr$
DECLARE

    для_кого    int;

BEGIN

    FOREACH для_кого IN ARRAY array(SELECT
                                        id_сотрудника
                                    FROM сотрудник
                                    WHERE coalesce(id_сотрудника = какого_сотрудника, TRUE))
    LOOP

         CALL заполнить_табель_сотрудника(  для_кого
                                          , coalesce(за_какой_месяц, extract(MONTH FROM CURRENT_DATE)::int)
                                          , coalesce(какого_года,    extract(YEAR  FROM CURRENT_DATE)::int) );


    END LOOP;

END
$pr$;


-- Procedure #15
--
CREATE OR REPLACE PROCEDURE заполнить_табель_сотрудника(

    какого_сотрудника    int
  , за_какой_месяц       int
  , какого_года          int

)
LANGUAGE plpgsql
AS
$pr$
DECLARE

    запись_ещё_не_создана    bool;
    число                    int;
    за_какую_дату            date;
    запрос                   varchar;
    статус_явки              varchar;
    фрагмент_запроса         varchar = '';
    время_графика            interval;
    часов_в_графике          numeric(5, 2);
    отработано               numeric(5, 2);
    всего_отработано         numeric(5, 2) = 0;
    всего_по_графику         numeric(5, 2) = 0;

BEGIN

    запись_ещё_не_создана = NOT exists(SELECT 1
                                       FROM табель_учёта_рв
                                       WHERE сотрудник = какого_сотрудника
                                             AND
                                             месяц     = за_какой_месяц
                                             AND
                                             год       = какого_года);

    IF запись_ещё_не_создана
        THEN
            запрос = concat(  'INSERT INTO табель_учёта_рв (сотрудник, год, месяц) '
                            , 'VALUES (', какого_сотрудника::text, ', ', какого_года::text, ', ', за_какой_месяц::text, ')' );

        EXECUTE запрос;

    END IF;

    время_графика = (SELECT
                         конец_рабочего_времени - начало_рабочего_времени
                     FROM график_рабочего_времени
                     WHERE id_графика = (SELECT
                                             график_сотрудника
                                         FROM сотрудник
                                         WHERE id_сотрудника = какого_сотрудника));

    часов_в_графике = extract(HOUR FROM время_графика) + extract(MINUTE FROM время_графика)/60;

    FOR число IN 1..дней_в_месяце(за_какой_месяц, какого_года)
    LOOP

        за_какую_дату = to_date(
                                 какого_года::text || to_char(за_какой_месяц, '00') || to_char(число, '00'),

                                 'YYYYMMDD'
                               );

        отработано  = часы_работы(какого_сотрудника, за_какую_дату);

        статус_явки = статус_явки_для_табеля(какого_сотрудника, за_какую_дату);

        IF статус_явки = 'В' OR статус_явки = 'НН'

            THEN фрагмент_запроса = ', "часов_отработано": null';

        ELSE фрагмент_запроса = ', "часов_отработано": ' || отработано;

        END IF;

        запрос = concat(
                         'update табель_учёта_рв ',
                         'set "', число::text, E'" = \'{"статус_явки": "', статус_явки, '"', фрагмент_запроса, E'}\' ',
                         'where сотрудник = ', какого_сотрудника, ' ',
                               'and ',
                               'год       = ', какого_года, ' ',
                               'and ',
                               'месяц     = ', за_какой_месяц
                       );

        EXECUTE запрос;

        CALL проверить_посл_вых_и_прогул(какого_сотрудника, за_какую_дату);

    END LOOP;

END
$pr$;


-- Procedure #16
-- Show menu variant
CREATE OR REPLACE PROCEDURE меню(

    какой_вариант    int

)
LANGUAGE plpgsql
AS
$pr$
DECLARE

    header              varchar;
    body                varchar = '';
    footer              varchar;

    заголовок           varchar;
    temp                varchar = '';
    подпись             varchar;

    один_раздел         record;
    одно_блюдо          record;

    ширина_меню         int;

BEGIN

    заголовок = (SELECT
                     имя_меню
                 FROM вариант_меню
                 WHERE id_меню = какой_вариант);

    FOR i IN 1..char_length(заголовок)
    LOOP

        temp = temp || substr(заголовок, i, 1) || ' ';

    END LOOP;

    заголовок = upper(trim(temp));

    ширина_меню  = char_length('░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░');

    заголовок = строка_на_центр(заголовок, ширина_меню);


    -- Upper part of the bill
    header =  E'\n' ||
              E'\n░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░' ||
              E'\n✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳\n' ||
              E'\n\n\n' || заголовок;

    заголовок = строка_на_центр('⌘ ⌘ ⌘', ширина_меню);

    header =  header || E'\n\n' || заголовок;



    подпись = строка_на_центр('© 2022 Ярослав Козлов', ширина_меню);

    -- Lower part of the bill
    footer =  E'\n\n\n\n\n' ||
              E'\n' || подпись ||
              E'\n' ||
              E'\n✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳ ✳' ||
              E'\n░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░\n';


    FOR один_раздел IN (SELECT
                            * 
                        FROM раздел_меню
                        WHERE меню = какой_вариант
                        ORDER BY id_раздела)
    LOOP

        заголовок = строка_на_центр(upper(один_раздел.id_раздела || '. ' || один_раздел.имя_раздела), ширина_меню);

        body = body ||

               E'\n\n\n\n\n' || заголовок || E'\n\n' ||

               E'\n' || format('        %4s   %-33s%10s%14s%11s%14s', 'id', '    блюдо', 'количество', 'цена', 'скидка', 'со скидкой') || E'\n';


        -- List of rows with info about dishes
        FOR одно_блюдо IN (SELECT
                               *
                           FROM ve_меню_и_блюда
                           WHERE id_меню    = один_раздел.меню
                                 AND
                                 id_раздела = один_раздел.id_раздела)
        LOOP

            body = body ||

                   E'\n' || format('        %4s   %-33s%10s%14s%11s%14s', 

                                    одно_блюдо.id_блюда,

                                    одно_блюдо.имя_блюда,

                                    одно_блюдо.количество,

                                    число_с_пробелами(одно_блюдо.цена_блюда),

                                    coalesce('-' || одно_блюдо.процент_скидки || '%', '─'),

                                    число_с_пробелами(coalesce(одно_блюдо.цена_со_скидкой, одно_блюдо.цена_блюда))

                                    );

        END LOOP;

    END LOOP;


    RAISE NOTICE '%', header || body || footer;

END
$pr$;


-- Procedure #17
--
CREATE OR REPLACE PROCEDURE месяц_случ_событий(

    какой_месяц         int     DEFAULT extract(MONTH FROM (CURRENT_DATE - interval '1 MONTH'))
  , какого_года         int     DEFAULT extract(YEAR  FROM (CURRENT_DATE - interval '1 MONTH'))
  , с_нарушениями       bool    DEFAULT TRUE
  , максимум_заказов    int     DEFAULT 10

)
LANGUAGE plpgsql
AS
$pr$
DECLARE

    день    date;

BEGIN

    FOR число IN 1..дней_в_месяце(какой_месяц, какого_года)
    LOOP

        день = make_date(какого_года, какой_месяц, число);

        IF рабочий_день(день)
            THEN
                CALL день_случ_событий(день, с_нарушениями, максимум_заказов);

        ELSE CONTINUE;

        END IF;

    END LOOP;

    RAISE INFO E'\n\nСлучайные события за % % года сгенерированы.\n\n', lower(месяц(какой_месяц)), какого_года;

END
$pr$;


-- Procedure #18
-- Calculate wages
create or replace procedure начислить_зп(

    какому_сотруднику    int    DEFAULT NULL
  , за_какой_месяц       int    DEFAULT NULL
  , какого_года          int    DEFAULT NULL

)
LANGUAGE plpgsql
AS
$pr$
DECLARE

    для_кого_и_за_какой_период    record;

BEGIN

    CALL заполнить_табель(какому_сотруднику, за_какой_месяц, какого_года);


    FOR для_кого_и_за_какой_период IN (SELECT DISTINCT 
                                           сотрудник
                                         , год
                                         , месяц

                                       FROM табель_учёта_рв
                                       WHERE coalesce(сотрудник = какому_сотруднику, TRUE)
                                             AND
                                             coalesce(год       = какого_года,       TRUE)
                                             AND
                                             coalesce(месяц     = за_какой_месяц,    TRUE))
    LOOP

         CALL начислить_зп_сотруднику(  для_кого_и_за_какой_период.сотрудник
                                      , для_кого_и_за_какой_период.месяц
                                      , для_кого_и_за_какой_период.год );

    END LOOP;

END
$pr$;


-- Procedure #19
-- Calculate wages for employee
CREATE OR REPLACE PROCEDURE начислить_зп_сотруднику(

    какому_сотруднику    int
  , за_какой_месяц       int
  , какого_года          int

)
LANGUAGE plpgsql
AS
$pr$
DECLARE

    нет_записи_табеля     bool;
    нет_нарушений         bool;
    зп_уже_начислялась    bool;

    оклад                 numeric(12, 2);
    зп                    numeric(12, 2);
    чаевые                numeric(12, 2);

    часов_по_графику      numeric(5, 2);
    часов_отработано      numeric(5, 2);

BEGIN

    CALL заполнить_табель(какому_сотруднику, за_какой_месяц, какого_года);

    нет_записи_табеля = NOT exists(SELECT 1
                                   FROM табель_учёта_рв
                                   WHERE сотрудник = какому_сотруднику
                                         AND
                                         месяц     = за_какой_месяц
                                         AND
                                         год       = какого_года);

    IF нет_записи_табеля

        THEN RETURN;

    END IF;

    оклад = оклад_сотрудника(какому_сотруднику);

    часов_по_графику = рабочее_время_за_месяц_по_табелю(какому_сотруднику, за_какой_месяц, какого_года) ->> 'часов_по_графику';

    часов_отработано = рабочее_время_за_месяц_по_табелю(какому_сотруднику, за_какой_месяц, какого_года) ->> 'часов_отработано';

    зп = (оклад / часов_по_графику) * часов_отработано;

    нет_нарушений = NOT exists(SELECT 1
                               FROM журнал_нарушений
                               WHERE нарушитель = какому_сотруднику
                                     AND
                                     extract(MONTH FROM дата_нарушения) = за_какой_месяц
                                     AND
                                     extract(YEAR  FROM дата_нарушения) = какого_года);

    IF нет_нарушений
        THEN чаевые = (SELECT
                           sum(сумма_чаевых_сотрудника)

                       FROM чаевые_сотрудника
                       WHERE сотрудник_чаевых = какому_сотруднику
                             AND
                             заказ_чаевых IN (SELECT
                                                  id_заказа
                                              FROM заказ
                                              WHERE extract(MONTH FROM время_закрытия_заказа)::int = за_какой_месяц
                                                    AND
                                                    extract(YEAR  FROM время_закрытия_заказа)::int = какого_года));

        зп = зп + чаевые;

    END IF;

    зп_уже_начислялась = exists(SELECT 1
                                FROM зарплата
                                WHERE сотрудник      = какому_сотруднику
                                      AND
                                      месяц_зарплаты = за_какой_месяц
                                      AND
                                      год_зарплаты   = какого_года);

    IF зп_уже_начислялась 

        THEN

            UPDATE зарплата
            SET зарплата_сотрудника = зп
            WHERE сотрудник      = какому_сотруднику
                  AND
                  месяц_зарплаты = за_какой_месяц
                  AND
                  год_зарплаты   = какого_года;

    ELSE

        INSERT INTO зарплата(год_зарплаты, месяц_зарплаты, сотрудник,         зарплата_сотрудника)
        VALUES              (какого_года,  за_какой_месяц, какому_сотруднику, зп                 );

    END IF;

END
$pr$;


-- Procedure #20
-- Pay bill
CREATE OR REPLACE PROCEDURE оплатить_счёт(

    какой_счёт       int
  , способ_оплаты    int               DEFAULT 1 -- By card
  , сумма            numeric(12, 2)    DEFAULT NULL
  , в_какое_время    timestamp         DEFAULT CURRENT_TIMESTAMP

 )
LANGUAGE plpgsql
AS
$pr$
DECLARE

    id_оплаты           int;
    какого_заказа       int;

    счёт_уже_оплачен    bool = (SELECT
                                    счёт_оплачен
                                FROM счёт
                                WHERE id_счёта = какой_счёт);

    нет_счёта           bool = NOT exists(SELECT 1
                                          FROM счёт
                                          WHERE id_счёта = какой_счёт);

    оплата_картой       bool = (способ_оплаты = 1);
    неизв_способ        bool = (способ_оплаты <> 2);


    долг_счёта          numeric(12, 2) = (SELECT
                                              долг
                                          FROM ve_платежи_по_счетам
                                          WHERE счёт = какой_счёт
                                          LIMIT 1);

    нет_суммы           bool = (сумма IS NULL);

    заказ_счёта         int = (SELECT
                                   заказ
                               FROM ve_платежи_по_счетам
                               WHERE счёт = какой_счёт
                               LIMIT 1);

BEGIN

    IF нет_счёта
        THEN
            RAISE NOTICE E'\n\nСчёт #% не существует --> Проверьте корректность указанного номера счёта.\n', какой_счёт;
            RETURN;
    END IF;

    IF счёт_уже_оплачен
        THEN
            RAISE NOTICE E'\n\nСчёт #% полностью оплачен ранее --> Оплата не требуется.\n', какой_счёт;
            RETURN;
    ELSE
        IF оплата_картой
            THEN
                сумма = долг_счёта;

        ELSIF неизв_способ
            THEN
                RAISE NOTICE E'\n\nНеизвестный способ оплаты {1, 2} --> %! Проверьте корректность указанного значения.\n', способ_оплаты;
                RETURN;

        ELSIF нет_суммы
            THEN
                RAISE NOTICE E'%\n\n call оплатить_счёт(какой_счёт => %, способ_оплаты => %, СУММА => ?);\n',

                             E'\n\nПри оплате наличными (способ оплаты => 2) необходимо указать третьим  параметром предлагаемую к оплате сумму:',
                             какой_счёт,
                             способ_оплаты;
                RETURN;
        END IF;

        CASE
            WHEN сумма >= долг_счёта
                THEN
                    INSERT INTO платёж (id_платежа, время_платежа, кассир,   счёт,       сумма_платежа, вид_платежа  )
                    VALUES             (DEFAULT,    в_какое_время, мой_id(), какой_счёт, долг_счёта,    способ_оплаты)
                    RETURNING id_платежа INTO id_оплаты;

                    IF сумма > долг_счёта
                        THEN
                            RAISE NOTICE E'\n\nПлатёж принят: счёт #% полностью оплачен.\nСдача --> % %', какой_счёт, число_с_пробелами(сумма - долг_счёта), текст_чека_платежа(id_оплаты);
                    ELSE
                            RAISE NOTICE E'\n\nПлатёж принят: счёт #% полностью оплачен.%', какой_счёт, текст_чека_платежа(id_оплаты);
                    END IF;

                    -- Mark the bill as fully paid
                    UPDATE счёт
                    SET счёт_оплачен = TRUE
                    WHERE id_счёта = какой_счёт;

                    -- Complete the fully paid order
                    UPDATE заказ
                    SET статус_заказа = 3 -- Set order status to #3 (closed order)
                    WHERE id_заказа = заказ_счёта;

                    UPDATE заказ
                    SET время_закрытия_заказа      = в_какое_время,
                        время_освобождения_столика = в_какое_время
                    WHERE id_заказа = заказ_счёта;

                    UPDATE деньги_кассы
                    SET все_деньги_кассы = все_деньги_кассы + долг_счёта;

            WHEN сумма < долг_счёта
                THEN
                    INSERT INTO платёж (id_платежа, время_платежа, кассир,   счёт,       сумма_платежа, вид_платежа  )
                    VALUES             (DEFAULT,    в_какое_время, мой_id(), какой_счёт, сумма,         способ_оплаты)
                    RETURNING id_платежа INTO id_оплаты;


                    RAISE NOTICE E'\n\nПлатёж принят: частичная оплата счёта #%.\nДолг --> % %', какой_счёт, число_с_пробелами(долг_счёта - сумма), текст_чека_платежа(id_оплаты);

                    UPDATE деньги_кассы
                    SET все_деньги_кассы = все_деньги_кассы + сумма;
            END CASE;
    END IF;

END
$pr$;


-- Procedure #21
-- Open new order
CREATE OR REPLACE PROCEDURE открыть_новый_заказ(

    IN       столик_заказа    int
  , IN       карта_скидок     int          DEFAULT NULL
  , IN       акция            int          DEFAULT NULL
  , IN       кто_создал       int          DEFAULT мой_id()
  , IN       в_какое_время    timestamp    DEFAULT NULL

  , INOUT    id_для_заказа    int          DEFAULT NULL

)
LANGUAGE plpgsql
AS
$pr$
DECLARE

    время_заказа_не_указано    bool = (в_какое_время IS NULL);
    столик_уже_занят           bool;

BEGIN

    IF время_заказа_не_указано
        THEN
            в_какое_время = CURRENT_TIMESTAMP;

            IF NOT рабочий_день(в_какое_время::date)
                THEN
                    RAISE NOTICE E'\n\nСегодня ресторан не работает :(\n';
                    RETURN;
            END IF;

            IF свободные_столики() IS NULL
                THEN RAISE NOTICE E'\n\nВсе столики уже заняты :( --> Попробуйте позже.\n';
                 RETURN;
            END IF;

            столик_уже_занят = (SELECT
                                    столик_занят
                                FROM столик
                                WHERE id_столика = столик_заказа);

            IF столик_уже_занят
                THEN RAISE NOTICE E'\n\nСтолик #% занят! --> Выберите другой столик.\nСвободные столики: %.\n', столик_заказа, свободные_столики();
                RETURN;
            END IF;
    END IF;

    INSERT INTO заказ  (время_заказа,  сотрудник,  столик,        гостевая_карта_скидок, акция_на_заказ)
    VALUES             (в_какое_время, кто_создал, столик_заказа, карта_скидок,          акция         )
    RETURNING id_заказа INTO id_для_заказа;

    IF id_для_заказа IS NOT NULL
        THEN
            RAISE NOTICE E'\n\nВы успешно создали новый заказ на столике #%. Добавьте теперь в заказ блюда%.\n', столик_заказа
                                                                                                               , CASE
                                                                                                                     WHEN coalesce(карта_скидок, акция) IS NULL
                                                                                                                         THEN ' и скидки'
                                                                                                                     ELSE ''
                                                                                                                 END CASE;
    END IF;

END
$pr$;


-- Procedure #22
-- Cancel order
CREATE OR REPLACE PROCEDURE отменить_заказ(

    заказ_к_отмене    int

)
LANGUAGE plpgsql
AS
$pr$
DECLARE

    статус_заказа_к_отмене    int;

BEGIN

    статус_заказа_к_отмене = (SELECT
                                  статус_заказа 
                              FROM заказ
                              WHERE id_заказа = заказ_к_отмене);

    IF статус_заказа_к_отмене > 1
        THEN
            RAISE NOTICE 'Заказ в статусе "%" не может быть отменён!', (SELECT
                                                                            имя_статуса_заказа
                                                                        FROM статус_заказа
                                                                        WHERE id_статуса_заказа = статус_заказа_к_отмене);
           RETURN;

    END IF;


    IF exists(SELECT 1
              FROM блюдо_заказ
              WHERE заказ = заказ_к_отмене)
        THEN
            RAISE NOTICE 'Заказ с добавленными блюдами не может быть отменён!';
            RETURN;
    END IF;

    DELETE FROM заказ
    WHERE id_заказа = заказ_к_отмене;

END
$pr$;


-- Procedure #23
-- Show message
CREATE OR REPLACE PROCEDURE показать_сообщение(

    текст    varchar

)
LANGUAGE plpgsql
AS
$pr$
BEGIN

    RAISE NOTICE '%', текст;

END
$pr$;


-- Procedure #24
-- Apply proximity card (to card reader)
CREATE OR REPLACE PROCEDURE приложить_ключ_карту(

    считыватель    int
  , карта          int          DEFAULT NULL
  , время          timestamp    DEFAULT CURRENT_TIMESTAMP

)
LANGUAGE plpgsql
AS
$pr$
BEGIN

    INSERT INTO запись_скуд (считыватель, ключ_карта,                                    время_записи_скуд)
    VALUES                  (считыватель, coalesce(карта, (SELECT
                                                               ключ_карта
                                                           FROM ключ_карта_сотрудника
                                                           WHERE сотрудник = мой_id()
                                                           LIMIT 1)),                    время            );

END
$pr$;


-- Procedure #25
-- Check unregistered last exit and absence violations
CREATE OR REPLACE PROCEDURE проверить_посл_вых_и_прогул(

    какого_сотрудника    int
  , за_какую_дату        date

)
LANGUAGE plpgsql
AS
$pr$
DECLARE

   прогул                               bool;
   не_отмечен_последний_выход           bool;
   нарушение_ещё_не_регистрировалось    bool;
   в_какое_время                        varchar;

BEGIN

    не_отмечен_последний_выход = exists(SELECT 1
                                        FROM ve_запись_скуд_нарушения
                                        WHERE id_сотрудника = какого_сотрудника
                                              AND
                                              дата          = за_какую_дату
                                              AND
                                              нарушение_2   = 4);

    IF не_отмечен_последний_выход
        THEN

            в_какое_время = (SELECT
                                 время_нарушения_2
                             FROM ve_запись_скуд_нарушения
                             WHERE id_сотрудника = какого_сотрудника
                                   AND
                                   дата          = за_какую_дату
                                   AND
                                   нарушение_2   = 4
                             LIMIT 1);

            нарушение_ещё_не_регистрировалось = NOT exists(SELECT 1
                                                           FROM журнал_нарушений
                                                           WHERE нарушитель      = какого_сотрудника
                                                                 AND
                                                                 нарушение       = 4
                                                                 AND
                                                                 дата_нарушения  = за_какую_дату
                                                                 AND
                                                                 время_нарушения = в_какое_время);
            IF нарушение_ещё_не_регистрировалось
                THEN

                    INSERT INTO журнал_нарушений (нарушитель,        нарушение, дата_нарушения, время_нарушения)
                    VALUES                       (какого_сотрудника, 4,         за_какую_дату,  в_какое_время  );

            END IF;

    END IF;

    прогул = (статус_явки_для_табеля(какого_сотрудника, за_какую_дату) = 'ПР');

    IF прогул
        THEN

            нарушение_ещё_не_регистрировалось = NOT exists(SELECT 1
                                                           FROM журнал_нарушений
                                                           WHERE нарушитель     = какого_сотрудника
                                                                 AND
                                                                 нарушение      = 10
                                                                 AND
                                                                 дата_нарушения = за_какую_дату);

            IF нарушение_ещё_не_регистрировалось
                THEN

                    INSERT INTO журнал_нарушений (нарушитель,        нарушение, дата_нарушения)
                    VALUES                       (какого_сотрудника, 10,        за_какую_дату );

            END IF;

    END IF;

END
$pr$;


-- Procedure #26
--
CREATE OR REPLACE PROCEDURE сдать_кассу(

    когда    timestamp    DEFAULT NULL

)
LANGUAGE plpgsql
AS
$pr$
DECLARE

    когда_не_указано    bool = (когда IS NULL);

BEGIN

    IF когда_не_указано
        THEN когда = CURRENT_TIMESTAMP;
    END IF;

    INSERT INTO доход_либо_расход(имя_операции,
                                  время_операции,
                                  сумма_дохода,
                                  сумма_расхода)

    VALUES                      ('Получение денег из кассы (с сохранением остатка = 1000.00)',
                                  когда,
                                 (SELECT все_деньги_кассы - 1000
                                  FROM деньги_кассы),
                                  NULL);

    TRUNCATE деньги_кассы;

    INSERT INTO деньги_кассы(все_деньги_кассы)
    VALUES                  (1000            );

END
$pr$;


-- Function #27
-- Show list of procedures and functions in a schema
CREATE OR REPLACE PROCEDURE список_процедур_и_функций(

    схема      varchar
  , отступ     int        DEFAULT 4
  , префикс    varchar    DEFAULT ''
  , язык       varchar    DEFAULT 'RU'

)
LANGUAGE plpgsql
AS
$func$
DECLARE

    про_фун    record;
    список     varchar = concat(  E'\n', префикс
                                , E'\n', префикс,  repeat(' ', 2 * отступ)
                                , CASE язык
                                      WHEN 'RU'
                                          THEN 'П Р О Ц Е Д У Р Ы'
                                      ELSE     'P R O C E D U R E S'
                                  END
                                , E'\n', префикс
                                , E'\n', префикс);
    i          int = 0;

BEGIN

    FOR про_фун IN (SELECT
                        p.proname::varchar                                       AS имя_про_фун
                      , pg_get_function_result(p.oid)::varchar                   AS тип_про_фун
                      , pg_get_function_result(p.oid) IS NOT NULL                AS функция

                      , lag(pg_get_function_result(p.oid)) OVER w IS NULL
                        AND
                        pg_get_function_result(p.oid) IS NOT NULL                AS сброс_счётчика

                      , p.proargnames::varchar[]                                 AS имена_арг

                      , (SELECT
                             array_agg(oidvectortypes(array[argtyp]::oidvector))
                         FROM unnest(p.proargtypes) AS t(argtyp))::varchar[]     AS типы_арг

                    FROM       pg_proc      AS p
                    INNER JOIN pg_namespace AS ns ON ns.oid = p.pronamespace
                    WHERE ns.nspname = схема
                          AND
                          p.proname NOT ILIKE 'trf_%' -- Do not look at trigger functions
                    WINDOW w AS (ORDER BY pg_get_function_result(p.oid), p.proname)
                    ORDER BY функция, имя_про_фун)
    LOOP

        IF про_фун.сброс_счётчика
            THEN
                i = 0;
                список = concat(  список
                                , E'\n', префикс
                                , E'\n', префикс
                                , E'\n', префикс, repeat(' ', 2 * отступ)
                                , CASE язык
                                      WHEN 'RU'
                                          THEN 'Ф У Н К Ц И И'
                                      ELSE     'F U N C T I O N S'
                                  END
                                , E'\n', префикс
                                , E'\n', префикс);
        END IF;

        i = i + 1;

        список = concat(  список
                        , E'\n', про_функция_текстом(  i
                                                     , про_фун.имя_про_фун
                                                     , про_фун.тип_про_фун
                                                     , про_фун.имена_арг
                                                     , про_фун.типы_арг
                                                     , отступ
                                                     , префикс
                                                     , язык )
                        , E'\n', префикс
                        , E'\n', префикс );

    END LOOP;

    RAISE INFO E'\n\n%\n\n', список;

END
$func$;


-- Procedure #28
-- Employee working time log
CREATE OR REPLACE PROCEDURE табель_сотрудника(

    какого_сотрудника    int
  , за_какой_месяц       int
  , какого_года          int

)
LANGUAGE plpgsql
AS
$pr$
DECLARE

    заголовок                varchar;
    header                   varchar;
    body                     varchar = '';
    footer                   varchar;
    подпись                  varchar;

    ширина_табеля            int;

    фрагмент                 varchar = '';

    статус_явки              varchar;

    дней_по_графику          int = 0;
    дней_отработано          int = 0;

    дней_по_графику_за_мес   int = 0;
    дней_отработано_за_мес   int = 0;

    часов_отработано         numeric(5, 2) = 0;
    часов_отработано_всего   numeric(5, 2) = 0;
    часов_отработано_за_мес  numeric(5, 2) = 0;

    часов_по_графику         numeric(5, 2) = 0;
    часов_по_графику_всего   numeric(5, 2) = 0;
    часов_по_графику_за_мес  numeric(5, 2) = 0;

BEGIN

    CALL заполнить_табель_сотрудника(какого_сотрудника, за_какой_месяц, какого_года);

    заголовок = растянуть_заголовок('ТАБЕЛЬ');

    ширина_табеля  = char_length('░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░');

    заголовок = строка_на_центр(заголовок, ширина_табеля) || E'\n' ||
                строка_на_центр('учёта рабочего времени', ширина_табеля) || E'\n\n\n' ||
                строка_на_центр('за ' || месяц(за_какой_месяц) || ' ' || какого_года || ' года', ширина_табеля) || E'\n\n\n\n\n' ||
                E'    Сотрудник: ' || полное_имя_сотрудника(какого_сотрудника) || ', ' || lower(должность_сотрудника(какого_сотрудника)) || E'\n';

    -- Upper part of the bill
    header =  E'\n\n' ||
              E'░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░' ||
              E'\n\n\n\n' || заголовок || E'\n' ||
              E'   ┌───────────────────────────────────────────────────────────────────────────────────────────────────────────────┬─────────────────────┐\n' ||
              E'   │                              Отметки о явках и неявках на работу по числам месяца                             │    Отработано за    │\n' ||
              E'   ├──────┬──────┬──────┬──────┬──────┬──────┬──────┬──────┬──────┬──────┬──────┬──────┬──────┬──────┬──────┬──────┼──────────┬──────────┤\n' ||
              E'   │      │      │      │      │      │      │      │      │      │      │      │      │      │      │      │      │ Половину │          │\n' ||
              E'   │  01  │  02  │  03  │  04  │  05  │  06  │  07  │  08  │  09  │  10  │  11  │  12  │  13  │  14  │  15  │  XX  │  месяца  │  Месяц   │\n' ||
              E'   │      │      │      │      │      │      │      │      │      │      │      │      │      │      │      │      │  (I,II)  │          │\n' ||
              E'   ├──────┼──────┼──────┼──────┼──────┼──────┼──────┼──────┼──────┼──────┼──────┼──────┼──────┼──────┼──────┼──────┼──────────┴──────────┤\n' ||
              E'   │      │      │      │      │      │      │      │      │      │      │      │      │      │      │      │      │         Дни         │\n' ||
              E'   │  16  │  17  │  18  │  19  │  20  │  21  │  22  │  23  │  24  │  25  │  26  │  27  │  28  │  29  │  30  │  31  ├─────────────────────┤\n' ||
              E'   │      │      │      │      │      │      │      │      │      │      │      │      │      │      │      │      │        Часы         │\n' ||
              E'   ├──────┴──────┴──────┴──────┴──────┴──────┴──────┴──────┴──────┴──────┴──────┴──────┴──────┴──────┴──────┴──────┼─────────────────────┤\n' ||
              E'   ├──────┬──────┬──────┬──────┬──────┬──────┬──────┬──────┬──────┬──────┬──────┬──────┬──────┬──────┬──────┬──────┼──────────┬──────────┤\n' ||
              E'   │      │      │      │      │      │      │      │      │      │      │      │      │      │      │      │      │          │          │\n' ||
              E'   │';

    подпись = строка_на_центр('© 2022 Ярослав Козлов', ширина_табеля);

    -- Lower part of the bill
    footer = E'\n\n\n\n\n' ||
             E'\n' || подпись ||
             E'\n' ||
             E'\n░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░\n';

    FOR число IN 1..15
    LOOP

        статус_явки = статус_явки_по_табелю(какого_сотрудника, число, за_какой_месяц, какого_года);

        IF статус_явки <> 'В'
            THEN дней_по_графику = дней_по_графику + 1;
        END IF;


        IF статус_явки = 'Я'
           OR
           статус_явки = 'Я/ПР'

            THEN дней_отработано = дней_отработано + 1;

        END IF;

        body = body || format('%-6s', строка_на_центр(статус_явки, 6)) || '│';

    END LOOP;

    дней_отработано_за_мес  = рабочее_время_за_месяц_по_табелю(какого_сотрудника, за_какой_месяц, какого_года) ->> 'дней_отработано';

    body =                                                                                                       body || '  XX  │' ||
                                                                                                                         format('    %-2s    ', дней_отработано) || 
                                                                                                                                         E'│          │\n' ||
           E'   │      │      │      │      │      │      │      │      │      │      │      │      │      │      │      │      │          │          │\n' ||
           E'   ├──────┼──────┼──────┼──────┼──────┼──────┼──────┼──────┼──────┼──────┼──────┼──────┼──────┼──────┼──────┼──────┼──────────┤' ||
                                                                                                                                    format('    %-2s    ', дней_отработано_за_мес) || E'│\n' ||
           E'   │      │      │      │      │      │      │      │      │      │      │      │      │      │      │      │      │          │          │\n' ||
           E'   │';

    FOR число IN 1..15
    LOOP

        статус_явки = статус_явки_по_табелю(какого_сотрудника, число, за_какой_месяц, какого_года);

        IF статус_явки <> 'В'
            THEN часов_по_графику_всего = часов_по_графику_всего + часов_в_графике_сотрудника(какого_сотрудника);
        END IF;

        часов_отработано = часов_отработано_по_табелю(какого_сотрудника, число, за_какой_месяц, какого_года);

        CASE
            WHEN часов_отработано > 0

                THEN фрагмент = часов_отработано;

            ELSE фрагмент = '';

        END CASE;

        body = body || format(' %4s ', фрагмент) || '│';

        часов_отработано_всего = часов_отработано_всего + coalesce(часов_отработано, 0);

    END LOOP;

    body =                                                                                                       body || '  XX  │' || format('  %-6s  ', строка_на_центр(часов_отработано_всего::text, 6)) || 
                                                                                                                                         E'│          │\n' ||
           E'   │      │      │      │      │      │      │      │      │      │      │      │      │      │      │      │      │          │          │\n' ||
           E'   ├──────┼──────┼──────┼──────┼──────┼──────┼──────┼──────┼──────┼──────┼──────┼──────┼──────┼──────┼──────┼──────┼──────────┼──────────┤\n' ||
           E'   │      │      │      │      │      │      │      │      │      │      │      │      │      │      │      │      │          │          │\n' ||
           E'   │';

    дней_отработано = 0;

    FOR число IN 16..дней_в_месяце(за_какой_месяц, какого_года)
    LOOP

        статус_явки = статус_явки_по_табелю(какого_сотрудника, число, за_какой_месяц, какого_года);

        IF статус_явки <> 'В'

            THEN дней_по_графику = дней_по_графику + 1;

        END IF;


        IF статус_явки = 'Я'
           OR
           статус_явки = 'Я/ПР'

            THEN дней_отработано = дней_отработано + 1;

        END IF;

        body = body || format('%-6s', строка_на_центр(статус_явки, 6)) || '│';

    END LOOP;

    FOR число IN 1..(31 - дней_в_месяце(за_какой_месяц, какого_года))
    LOOP

        body = body || '  XX  │';

    END LOOP;

    часов_отработано_за_мес = рабочее_время_за_месяц_по_табелю(какого_сотрудника, за_какой_месяц, какого_года) ->> 'часов_отработано';

    body = body ||                                                                            format('    %-2s    ', дней_отработано) || E'│          │\n' ||
           E'   │      │      │      │      │      │      │      │      │      │      │      │      │      │      │      │      │          │          │\n' ||
           E'   ├──────┼──────┼──────┼──────┼──────┼──────┼──────┼──────┼──────┼──────┼──────┼──────┼──────┼──────┼──────┼──────┼──────────┤' ||
                                                                           format('  %-6s  ', строка_на_центр(часов_отработано_за_мес::text, 6)) || E'│\n' ||
           E'   │      │      │      │      │      │      │      │      │      │      │      │      │      │      │      │      │          │          │\n' ||
           E'   │';

    часов_отработано_всего = 0;

    FOR число IN 16..дней_в_месяце(за_какой_месяц, какого_года)
    LOOP

        статус_явки = статус_явки_по_табелю(какого_сотрудника, число, за_какой_месяц, какого_года);

        IF статус_явки <> 'В'
            THEN
                часов_по_графику_всего = часов_по_графику_всего + часов_в_графике_сотрудника(какого_сотрудника);
        END IF;

        часов_отработано = часов_отработано_по_табелю(какого_сотрудника, число, за_какой_месяц, какого_года);

        CASE
            WHEN часов_отработано > 0
                THEN фрагмент = часов_отработано;
            ELSE     фрагмент = '';
        END CASE;


        body = body || format(' %4s ', фрагмент) || '│';

        часов_отработано_всего = часов_отработано_всего + coalesce(часов_отработано, 0);

    END LOOP;

    FOR число IN 1..(31 - дней_в_месяце(за_какой_месяц, какого_года))
    LOOP

        body = body || '  XX  │';

    END LOOP;

    часов_по_графику_за_мес = рабочее_время_за_месяц_по_табелю(какого_сотрудника, за_какой_месяц, какого_года) ->> 'часов_по_графику';
    дней_по_графику_за_мес  = рабочее_время_за_месяц_по_табелю(какого_сотрудника, за_какой_месяц, какого_года) ->> 'дней_по_графику';

    body = body ||                                               format('  %-6s  ', строка_на_центр(часов_отработано_всего::text, 6)) || E'│          │\n' ||
           E'   │      │      │      │      │      │      │      │      │      │      │      │      │      │      │      │      │          │          │\n' ||
           E'   └──────┴──────┴──────┴──────┴──────┴──────┴──────┴──────┴──────┴──────┴──────┴──────┴──────┴──────┴──────┴──────┴──────────┴──────────┘\n\n' ||
           E'    Всего отработано часов: ' || часов_отработано_за_мес || ' из ' || часов_по_графику_за_мес || ' (' || (100 * часов_отработано_за_мес / часов_по_графику_за_мес)::int || E'% рабочего времени).\n' ||
           E'    Всего отработано дней: ' || дней_отработано_за_мес || ' из ' || дней_по_графику_за_мес || E'.\n\n\n\n\n\n' ||
           E'    Я - Явка                          ПР - Прогул                          Я/ПР - Частичный прогул                          В - Выходной\n\n' ||
           E'    НН - Неопределённое время работы из-за нарушения требований по использованию бесконтактных ключ-карт (не отмечен вход/выход)';

    RAISE NOTICE '%', header || body || footer;

END
$pr$;


-- Procedure #29
-- Delete dish from order
CREATE OR REPLACE PROCEDURE удалить_блюдо_из_заказа(

    из_какого_заказа    int
  , какое_блюдо         int

)
LANGUAGE plpgsql
AS
$pr$
DECLARE

    статус_заказа_удаляемого_блюда    int;

BEGIN

    статус_заказа_удаляемого_блюда = (SELECT
                                          статус_заказа 
                                      FROM заказ
                                      WHERE id_заказа = из_какого_заказа);

    IF статус_заказа_удаляемого_блюда > 1
        THEN
            RAISE NOTICE 'Заказ #% в статусе "%"! --> Блюдо не может быть удалено из заказа.', из_какого_заказа

                                                                                             , (SELECT
                                                                                                    имя_статуса_заказа
                                                                                                FROM статус_заказа
                                                                                                WHERE id_статуса_заказа = статус_заказа_удаляемого_блюда);
            RETURN;

    END IF;

    -- If order has the dish
    IF exists(SELECT 1
              FROM блюдо_заказ
              WHERE заказ = из_какого_заказа
                    AND
                    блюдо = какое_блюдо)
        THEN

            -- Delete one of such dishes
            DELETE FROM блюдо_заказ
            WHERE id_блюда_заказа = (SELECT
                                         id_блюда_заказа 
                                     FROM блюдо_заказ
                                     WHERE заказ = из_какого_заказа
                                           AND 
                                           блюдо = какое_блюдо
                                     LIMIT 1);


        ELSE -- If order hasn't got the dish, inform about it

            RAISE NOTICE 'Блюдо "%" (%) отсутствует в заказе #%.', (SELECT
                                                                        имя_блюда
                                                                    FROM блюдо
                                                                    WHERE id_блюда = какое_блюдо)

                                                                 , какое_блюдо
                                                                 , из_какого_заказа;

    END IF;

END
$pr$;


-- Procedure #30
-- Payment checks of bill
CREATE OR REPLACE PROCEDURE чеки_заказа(

    какого_заказа     int

)
LANGUAGE plpgsql
AS
$pr$
DECLARE

    какого_счёта              int;

    нет_заказа                bool;
    нет_счёта                 bool;
    нет_платежей              bool;
    счёт_полностью_оплачен    bool;

    r                         record;

    delimiter                 varchar;
    footer                    varchar;
    чеки                      varchar;

BEGIN

    нет_заказа = NOT exists(SELECT 1
                            FROM заказ
                            WHERE id_заказа = какого_заказа);

    IF нет_заказа
        THEN
            RAISE NOTICE E'\n\nЗаказ #% отсутствует --> Проверьте корректность указанного номера.\n', какого_заказа;
            RETURN;
    END IF;

    нет_счёта = NOT exists(SELECT 1
                           FROM счёт
                           WHERE заказ = какого_заказа);

    IF нет_счёта
        THEN
            RAISE NOTICE E'\n\nСчёт на заказ #% ещё не выписан --> Оплата не производилась.\n', какого_заказа;
            RETURN;
    END IF;

    какого_счёта = (SELECT
                        счёт
                    FROM ve_платежи_по_счетам
                    WHERE заказ = какого_заказа
                    LIMIT 1);

    нет_платежей = NOT exists(SELECT 1
                              FROM платёж
                              WHERE счёт = какого_счёта);

    счёт_полностью_оплачен = (SELECT
                                  счёт_оплачен
                              FROM счёт
                              WHERE id_счёта = какого_счёта
                              LIMIT 1);

    IF нет_платежей
        THEN
            RAISE NOTICE E'\n\nСчёт на заказ #% выписан (счёт #%), но оплата не производилась.\n', какого_заказа, какого_счёта;
            RETURN;
    END IF;

    IF счёт_полностью_оплачен
        THEN
            RAISE NOTICE E'\n\nСчёт на заказ #% (счёт #%) полностью оплачен.\nСумма счёта --> %\nДубликаты чеков:\n', какого_заказа
                                                                                                                    , какого_счёта
                                                                                                                    , число_с_пробелами((SELECT
                                                                                                                                             сумма_счёта
                                                                                                                                         FROM ve_платежи_по_счетам
                                                                                                                                         WHERE заказ = какого_заказа
                                                                                                                                         LIMIT 1));

    ELSE    RAISE NOTICE '%', format(  E'\n\nСчёт на заказ #%s (счёт #%s) оплачен частично:' ||
                                       E'\n' ||
                                       E'\nСумма счёта %10s' ||
                                       E'\nОплачено    %10s' ||
                                       E'\nДолг        %10s' ||
                                       E'\n\nДубликаты чеков:\n'

                                     , какого_заказа
                                     , какого_счёта

                                     , число_с_пробелами((SELECT
                                                              сумма_счёта
                                                          FROM ve_платежи_по_счетам
                                                          WHERE заказ = какого_заказа
                                                          LIMIT 1))

                                     , '-' || число_с_пробелами((SELECT
                                                                     сумма_платежей
                                                                 FROM ve_платежи_по_счетам
                                                                 WHERE заказ = какого_заказа
                                                                 LIMIT 1))

                                     , число_с_пробелами((SELECT долг
                                                          FROM ve_платежи_по_счетам
                                                          WHERE заказ = какого_заказа
                                                          LIMIT 1))
                                    );

    END IF;


    чеки = E'\n' ||
           E'\n░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░' ||
           E'\n○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○';

    delimiter = E'\n○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○';


    footer = E'\n░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░\n';


    FOR r IN (SELECT
                  *
              FROM платёж
              WHERE счёт = какого_счёта)
    LOOP

        чеки = чеки || текст_чека_платежа(r.id_платежа, границы => FALSE, дубликат => TRUE) || delimiter;

    END LOOP;

    RAISE NOTICE '%', чеки || footer;

END
$pr$;



----------------------------------------❬ CREATING TRIGGER FUNCTIONS AND TRIGGERS ❭---------------------------------------



\echo
\echo
\echo '    --❬ СОЗДАНИЕ ТРИГГЕРНЫХ ФУНКЦИЙ И ТРИГГЕРОВ ❭--'
\echo



-- Trigger Function #1
-- Check money for expenses (Function part of ▼ Trigger #1)
CREATE OR REPLACE FUNCTION trf_BI_дхрсх_проверить_расход()
RETURNS trigger
LANGUAGE plpgsql
AS
$tr_func$
DECLARE

    средства_ресторана    numeric(12, 2) = (SELECT
                                                все_деньги_ресторана
                                            FROM деньги_ресторана);

BEGIN

    -- If money of restaurant is not enough for expenses
    IF (new.сумма_расхода IS NOT NULL)
        AND
       (new.сумма_расхода > средства_ресторана)
        THEN
            RAISE NOTICE E'\n\nСредств ресторана недостаточно для предлагаемых расходов: % < %!\n', число_с_пробелами(средства_ресторана)
                                                                                                  , число_с_пробелами(new.сумма_расхода );

            RETURN NULL; -- Discard changes

    ELSE
            RETURN new; -- Allow changes

    END IF;

END
$tr_func$;


-- Trigger #1
-- Check money for expenses (Trigger part for ▲ Function #1)
CREATE OR REPLACE TRIGGER trg_BI_дхрсх_проверить_расход
    BEFORE INSERT ON доход_либо_расход
    FOR EACH ROW EXECUTE FUNCTION trf_BI_дхрсх_проверить_расход();


\echo '----------------'



-- Trigger Function #2
-- Check (Function part of ▼ Trigger #2)
CREATE OR REPLACE FUNCTION trf_BI_дхрсх_проверка_на_ноль()
RETURNS trigger
LANGUAGE plpgsql
AS
$tr_func$
BEGIN

    IF coalesce(new.сумма_расхода, new.сумма_дохода) = 0
        THEN
            RETURN NULL; -- Discard changes

    ELSE    RETURN new;  -- Allow changes

    END IF;

END
$tr_func$;


-- Trigger #2
-- Check  (Trigger part for ▲ Function #2)
CREATE OR REPLACE TRIGGER trg_BI_дхрсх_проверка_на_ноль
    BEFORE INSERT ON доход_либо_расход
    FOR EACH ROW EXECUTE FUNCTION trf_BI_дхрсх_проверка_на_ноль();


\echo '----------------'


-- Trigger Function #3
-- Assign tips to employee (Function part of ▼ Trigger #3)
CREATE OR REPLACE FUNCTION trf_AU_заказ_чаевые_сотр()
RETURNS trigger
LANGUAGE plpgsql
AS
$tr_func$
DECLARE

    какие_чаевые    numeric(12, 2);

BEGIN

    -- If the order has been just closed
    IF (old.статус_заказа = 2 AND new.статус_заказа = 3)
        THEN
            какие_чаевые = (SELECT
                                сумма_чаевых
                            FROM счёт
                            WHERE заказ = old.id_заказа);

            INSERT INTO чаевые_сотрудника (заказ_чаевых,  сотрудник_чаевых, сумма_чаевых_сотрудника)
            VALUES                        (old.id_заказа, old.сотрудник,    какие_чаевые           );

    END IF;

    RETURN NULL;

END
$tr_func$;


-- Trigger #3
-- Assign tips to employee (Trigger part for ▲ Function #3)
CREATE OR REPLACE TRIGGER trg_AU_заказ_чаевые_сотр
    AFTER UPDATE ON заказ
    FOR EACH ROW EXECUTE FUNCTION trf_AU_заказ_чаевые_сотр();


\echo '----------------'


-- Trigger Function #4
-- Change money of restaurant (Function part of ▼ Trigger #4)
CREATE OR REPLACE FUNCTION trf_AI_дхрсх_изм_деньги_ресторана()
RETURNS trigger
LANGUAGE plpgsql
AS
$tr_func$
DECLARE

    изменение    numeric(12, 2);

BEGIN

    -- Change according to income and expenses log
    изменение = coalesce(new.сумма_дохода, -new.сумма_расхода);

    UPDATE деньги_ресторана
    SET все_деньги_ресторана = все_деньги_ресторана + изменение;

    RETURN NULL;

END
$tr_func$;


-- Trigger #4
-- Change money of restaurant (Trigger part for ▲ Trigger Function #4)
CREATE OR REPLACE TRIGGER trg_AI_дхрсх_изм_деньги_ресторана
    AFTER INSERT ON доход_либо_расход
    FOR EACH ROW EXECUTE FUNCTION trf_AI_дхрсх_изм_деньги_ресторана();


\echo '----------------'


-- Trigger Function #5
-- Discount changing check (Function part of ▼ Trigger #5)
CREATE OR REPLACE FUNCTION trf_BU_заказ_контроль_скидки()
RETURNS trigger
LANGUAGE plpgsql
AS
$tr_func$
BEGIN

    IF ( -- Attempting to change order discount
        (coalesce(old.гостевая_карта_скидок, 0) <> coalesce(new.гостевая_карта_скидок, 0)) -- Order guest card discount is being changed

         OR

        (coalesce(old.акция_на_заказ, 0) <> coalesce(new.акция_на_заказ, 0)) -- Order promotion discount is being changed
       )

         AND

        (old.статус_заказа > 1) -- The bill is already signed out --> No discount changes are allowed!

        THEN INSERT INTO журнал_нарушений (дата_нарушения,          время_нарушения,                       нарушитель, нарушение)
             VALUES                       (CURRENT_TIMESTAMP::date, to_char(CURRENT_TIMESTAMP, 'HH24:MI'), мой_id(),   8        );

             RETURN NULL; -- Discard changes

        ELSE RETURN new;  -- Confirm changes

    END IF;

END
$tr_func$;


-- Trigger #5
-- Discount changing check (Trigger part for ▲ Trigger Function #5)
CREATE OR REPLACE TRIGGER trg_BU_заказ_контроль_скидки
    BEFORE UPDATE ON заказ
    FOR EACH ROW EXECUTE FUNCTION trf_BU_заказ_контроль_скидки();


\echo '----------------'


-- Trigger Function #6
-- Cashbox increment check (Function part of ▼ Trigger #6)
CREATE OR REPLACE FUNCTION trf_BU_касса_пров_на_плюс()
RETURNS trigger
LANGUAGE plpgsql
AS
$tr_func$
BEGIN

    IF (new.все_деньги_кассы < old.все_деньги_кассы) -- Cashbox money is being decreased

        THEN
            INSERT INTO журнал_нарушений (дата_нарушения,          время_нарушения,                       нарушитель, нарушение)
            VALUES                       (current_timestamp::date, to_char(current_timestamp, 'HH24:MI'), мой_id(),   9        );

            RETURN NULL; -- Discard changes

    ELSE    RETURN new; -- Confirm changes

    END IF;

END
$tr_func$;


-- Trigger #6
-- Cashbox increment check (Trigger part for ▲ Trigger Function #6)
CREATE OR REPLACE TRIGGER trg_BU_касса_пров_на_плюс
    BEFORE UPDATE ON деньги_кассы
    FOR EACH ROW EXECUTE FUNCTION trf_BU_касса_пров_на_плюс();


\echo '----------------'


-- Trigger Function #7
-- Notification about violation (Function part of ▼ Trigger #7)
CREATE OR REPLACE FUNCTION trf_AI_жн_сообщ_о_нарушении()
RETURNS trigger
LANGUAGE plpgsql
AS
$tr_func$
DECLARE

    кому           constant int[] = array[1, 2, 7]; -- IDs of employees to be informed

    адресат        int;

    текст          varchar;
    заголовок      varchar;
    разделитель    varchar;

BEGIN

    заголовок =   E'\nОтправка сообщения о новом нарушении следующим сотрудникам:\n';

    FOREACH адресат IN ARRAY кому
    LOOP

        заголовок = заголовок || E'\n - ' || полное_имя_сотрудника(адресат);

    END LOOP;

    заголовок = заголовок || E'\n\n                 Т Е К С Т   С О О Б Щ Е Н И Я';

    разделитель =                E'                          * * *';


    текст = E'ВНИМАНИЕ! Зарегистрировано новое нарушение:\n' ||
            E'\nID записи в журнале нарушений: ' || new.id_записи_нарушения ||
            E'\n               Дата нарушения: ' || to_char(new.дата_нарушения, 'DD.MM.YYYY') ||
            E'\n              Время нарушения: ' || coalesce(new.время_нарушения, '') ||
            E'\n                   Нарушитель: ' || полное_имя_сотрудника(new.нарушитель) ||
            E'\n                Вид нарушения: ' || (SELECT
                                                         имя_вида_нарушения
                                                     FROM вид_нарушения
                                                     WHERE id_вида_нарушения = (SELECT
                                                                                    вид_нарушения
                                                                                FROM нарушение
                                                                                WHERE id_нарушения = new.нарушение)) ||
            E'\n           Описание нарушения: ' || (SELECT
                                                         имя_нарушения
                                                     FROM нарушение
                                                     WHERE id_нарушения = new.нарушение);


    RAISE NOTICE E'\n%\n\n%\n\n%\n', заголовок, текст, разделитель;

    -- Send notification to all employees in the array кому[]
    FOREACH адресат IN ARRAY кому
    LOOP

        INSERT INTO оповещение (адресат_оповещения, текст_оповещения)
        VALUES                 (адресат,            текст           );

    END LOOP;

    RETURN NULL;

END
$tr_func$;


-- Trigger #7
-- Notification about violation (Trigger part for ▲ Trigger Function #7)
CREATE OR REPLACE TRIGGER trg_AI_жн_сообщ_о_нарушении
    AFTER INSERT ON журнал_нарушений
    FOR EACH ROW EXECUTE FUNCTION trf_AI_жн_сообщ_о_нарушении();


\echo '----------------'


-- Trigger Function #8
-- Perform task (Function part of ▼ Trigger #8)
CREATE OR REPLACE FUNCTION trf_AI_таймер_вып_команду()
RETURNS trigger
LANGUAGE plpgsql
AS
$tr_func$
DECLARE

    скрипт    varchar;
    задача    varchar;

BEGIN

    скрипт = (SELECT
                  скрипт_команды
              FROM команды_сигналов
              WHERE id_команды = new.команда_сигнала_таймера);

    задача = (SELECT
                  имя_команды
              FROM команды_сигналов
              WHERE id_команды = new.команда_сигнала_таймера);

    RAISE INFO '';
    RAISE INFO '[Исполнитель задач таймера]: Получен сигнал таймера с заданием "%".', задача;
    RAISE INFO '[Исполнитель задач таймера]: Выполняю команду...';
    RAISE INFO '';

    EXECUTE скрипт;

    RAISE INFO '';
    RAISE INFO '[Исполнитель задач таймера]: Команда "%" исполнена.', задача;
    RAISE INFO '';

    RETURN NULL;

END
$tr_func$;


-- Trigger #8
-- Perform task (Trigger part for ▲ Trigger Function #8)
CREATE OR REPLACE TRIGGER trg_AI_таймер_вып_команду
    AFTER INSERT ON сигнал_таймера
    FOR EACH ROW EXECUTE FUNCTION trf_AI_таймер_вып_команду();


\echo '----------------'


-- Trigger Function #9
-- Check proximity card activation (Function part of ▼ Trigger #9)
CREATE OR REPLACE FUNCTION trf_BI_зс_пров_карту()
RETURNS trigger 
LANGUAGE plpgsql
AS
$tr_func$
DECLARE

    кто_нарушил    int;

BEGIN

    IF  (SELECT
             ключ_карта_активирована
         FROM ключ_карта_скуд
         WHERE id_ключ_карты = new.ключ_карта)
        THEN
            new.действие_скуд = 1;

    ELSE
            new.действие_скуд = 2;

            кто_нарушил = (SELECT
                               сотрудник
                           FROM ключ_карта_сотрудника
                           WHERE ключ_карта = new.ключ_карта);

            INSERT INTO журнал_нарушений (дата_нарушения,              время_нарушения,                           нарушитель,  нарушение)

            VALUES                       (new.время_записи_скуд::date, to_char(new.время_записи_скуд, 'HH24:MI'), кто_нарушил, 7        );

    END IF;

    RETURN new;

END
$tr_func$;


-- Trigger #9
-- Check proximity card activation (Trigger part for ▲ Trigger Function #9)
CREATE OR REPLACE TRIGGER trg_BI_зс_пров_карту
    BEFORE INSERT ON запись_скуд
    FOR EACH ROW EXECUTE FUNCTION trf_BI_зс_пров_карту();


\echo '----------------'


-- Trigger Function #10
-- Check working time schedule compliance (Function part of ▼ Trigger #10)
CREATE OR REPLACE FUNCTION trf_AI_зс_пров_график()
RETURNS trigger
LANGUAGE plpgsql
AS
$tr_func$
DECLARE

    скуд_инфо record;

BEGIN

    -- Record from access control system with additional info
    SELECT
        *
    INTO скуд_инфо
    FROM ve_запись_скуд_с_параметрами
    WHERE id_записи_скуд = new.id_записи_скуд;

    IF скуд_инфо.рабочий_день
        THEN
            IF скуд_инфо.вход_с_опозданием
                THEN

                    INSERT INTO журнал_нарушений (дата_нарушения,              время_нарушения,                           нарушитель,              нарушение)
                    VALUES                       (new.время_записи_скуд::date, to_char(new.время_записи_скуд, 'HH24:MI'), скуд_инфо.id_сотрудника, 1        );

            END IF;

            IF скуд_инфо.выход_раньше_времени
                THEN

                    INSERT INTO журнал_нарушений (дата_нарушения,              время_нарушения,                           нарушитель,              нарушение)
                    VALUES                       (new.время_записи_скуд::date, to_char(new.время_записи_скуд, 'HH24:MI'), скуд_инфо.id_сотрудника, 2        );

            END IF;

    END IF;

    RETURN NULL;

END
$tr_func$;


-- Trigger #10
-- Check working time schedule compliance (Trigger part for ▲ Trigger Function #10)
CREATE OR REPLACE TRIGGER trg_AI_зс_пров_график
    AFTER INSERT ON запись_скуд
    FOR EACH ROW execute FUNCTION trf_AI_зс_пров_график();


\echo '----------------'


-- Trigger Function #11
-- Check access control system violations (Function part of ▼ Trigger #11)
CREATE OR REPLACE FUNCTION trf_AI_зс_пров_наруш_скуд()
RETURNS TRIGGER
LANGUAGE plpgsql
AS
$tr_func$
DECLARE

    скуд_инфо         record;
    есть_нарушение    bool;

BEGIN

    -- Record from access control system with violations info
    SELECT
        *
    INTO скуд_инфо
    FROM ve_запись_скуд_нарушения
    WHERE id_записи_скуд = new.id_записи_скуд;

    есть_нарушение = скуд_инфо.нарушение_1 IS NOT NULL;

    IF есть_нарушение THEN

        INSERT INTO журнал_нарушений (дата_нарушения, время_нарушения,             нарушитель,              нарушение            )
        VALUES                       (скуд_инфо.дата, скуд_инфо.время_нарушения_1, скуд_инфо.id_сотрудника, скуд_инфо.нарушение_1);

    END IF;

    RETURN NULL;

END
$tr_func$;


-- Trigger #11
-- Check access control system violations (Trigger part for ▲ Trigger Function #11)
CREATE OR REPLACE TRIGGER trg_AI_зс_пров_наруш_скуд
    AFTER INSERT ON запись_скуд
    FOR EACH ROW EXECUTE FUNCTION trf_AI_зс_пров_наруш_скуд();


\echo '----------------'


-- Trigger Function #12
--  (Function part of ▼ Trigger #12)
CREATE OR REPLACE FUNCTION trf_BU_заказ_вр_закр_заказа()
RETURNS trigger
LANGUAGE plpgsql
AS
$tr_func$
DECLARE

    заказ_закрывают                 bool = (old.статус_заказа < 3 AND new.статус_заказа = 3);
    время_закр_не_указано           bool = (old.время_закрытия_заказа IS NULL);
    время_освоб_стола_не_указано    bool = (old.время_освобождения_столика IS NULL);

BEGIN

    IF заказ_закрывают
        THEN

            IF время_закр_не_указано
                THEN new.время_закрытия_заказа = CURRENT_TIMESTAMP;
            END IF;

            IF время_освоб_стола_не_указано
                THEN new.время_освобождения_столика = CURRENT_TIMESTAMP;
            END IF;

            IF new.время_закрытия_заказа - new.время_заказа < interval '1 HOUR'
                THEN
                    RAISE NOTICE E'\n\nМинимальное время обслуживания заказа 1 час. Осталось: % минут.\n\n', to_char(interval '1 HOUR' - (new.время_закрытия_заказа - new.время_заказа), 'MI');
                    RETURN NULL;
            END IF;


    END IF;

    RETURN new;

END
$tr_func$;


-- Trigger #12
--  (Trigger part for ▲ Trigger Function #12)
CREATE OR REPLACE TRIGGER trg_BU_заказ_вр_закр_заказа
    BEFORE UPDATE ON заказ
    FOR EACH ROW EXECUTE FUNCTION trf_BU_заказ_вр_закр_заказа();


\echo '----------------'


-- Trigger Function #14
--  (Function part of ▼ Trigger #14)
CREATE OR REPLACE FUNCTION trf_BI_заказ_кто_для_заказа()
RETURNS trigger
LANGUAGE plpgsql
AS
$tr_func$
DECLARE

    выходной    bool = NOT рабочий_день(new.время_заказа::date);
    никого      bool = NOT exists(SELECT 1
                                  FROM сотрудник
                                  WHERE сотрудник_на_работе(id_сотрудника, new.время_заказа));

BEGIN

    IF выходной
        THEN
            RAISE NOTICE E'\n\n% ресторан не работает.\n\n', new.время_заказа::date;
            RETURN NULL;
    ELSIF никого
        THEN
            RAISE NOTICE E'\n\n% На работе нет сотрудников --> Проверьте соответствие указанного времени заказа рабочему времени графиков сотрудников и регистрацию их присутствия с помощью ключ-карт.\n\n', date_trunc('MINUTE', new.время_заказа);
            RETURN NULL;
    ELSE    RETURN new;
    END IF;

END
$tr_func$;


-- Trigger #14
--  (Trigger part for ▲ Trigger Function #14)
CREATE OR REPLACE TRIGGER trg_BI_заказ_кто_для_заказа
    BEFORE INSERT ON заказ
    FOR EACH ROW EXECUTE FUNCTION trf_BI_заказ_кто_для_заказа();



-----------------------------------------[ E N D   O F   I N S T A L L A T I O N ]---------------------------------------

\echo
\echo
\echo
\echo '        --[ К О Н Е Ц   У С Т А Н О В К И ]--'
\echo
\echo


----------------------------------------❬ PRESENTATION OF THE INSTALLED DATABASE ❭---------------------------------------


\echo
\echo
\echo '    --❬ ДЕМОНСТРАЦИЯ ЭЛЕМЕНТОВ УСТАНОВЛЕННОЙ БАЗЫ ДАННЫХ ❭--'
\echo
\echo
\echo ' Б А З А   Д А Н Н Ы Х'
\echo

\l base4yaro

\echo
\echo
\echo ' С Х Е М А'
\echo

\dn ресторан

\echo
\echo
\echo ' Р О Л И'
\echo

\du rst_*

\echo
\echo '         Групповые роли               Роли пользователей'
\echo
\echo ' ┌────────────────────────────┐'
\echo ' │                            │'
\echo ' │         rst_admins         │ --------> rst_user_1'
\echo ' │                            │ --------> rst_user_3'
\echo ' │      (полный доступ)       │ --------> rst_user_7'
\echo ' │                            │'
\echo ' └────────────────────────────┘'
\echo
\echo ' ┌────────────────────────────┐'
\echo ' │                            │'
\echo ' │         rst_users          │ --------> rst_user_4'
\echo ' │                            │ --------> rst_user_5'
\echo ' │   (ограниченный доступ)    │ --------> rst_user_6'
\echo ' │                            │'
\echo ' └────────────────────────────┘'
\echo
\echo ' ┌────────────────────────────┐'
\echo ' │                            │'
\echo ' │        rst_viewers         │'
\echo ' │                            │ --------> rst_user_2'
\echo ' │     (режим просмотра)      │'
\echo ' │                            │'
\echo ' └────────────────────────────┘'

\echo
\echo
\echo 'ВНИМАНИЕ!'
\echo 'Подключение к базе данных "base4yaro" под именем пользователя "rst_user_3"...'
\echo
\echo 'Введите пароль ''3'' (ввод пароля не отображается) и нажмите <ENTER>'
\echo

\c base4yaro rst_user_3

\echo
\echo '- Установка схемы "ресторан" по умолчанию для текущей сессии...'
\echo

SET SCHEMA 'ресторан';

\echo
\echo
\echo ' Т А Б Л И Ц Ы'
\echo

\dt

\echo
\echo
\echo ' П Р Е Д С Т А В Л Е Н И Я'
\echo

\dv

\echo
\echo
\echo ' П Р О Ц Е Д У Р Ы   И   Ф У Н К Ц И И'
\echo

CALL список_процедур_и_функций('ресторан');

\echo
\echo
\echo 'Регистрация времени входа на рабочее место в системе контроля доступа:'
\echo
\echo 'CALL приложить_ключ_карту(считыватель => 1, карта => 3, время => \'2022-10-24 7:30\');'
\echo
CALL приложить_ключ_карту(считыватель => 1, карта => 3, время => '2022-10-24 7:30');

\echo
\echo
\echo 'Регистрация времени выхода с рабочего места в системе контроля доступа:'
\echo
\echo 'CALL приложить_ключ_карту(считыватель => 2, карта => 3, время => \'2022-10-24 15:30\');'
\echo
CALL приложить_ключ_карту(считыватель => 2, карта => 3, время => '2022-10-24 15:30');

\echo
\echo
\echo 'Отображение данных системы контроля доступа:'
\echo
\echo 'SELECT диаграмма FROM ve_диаграмма_скуд WHERE дата = \'2022-10-24\' AND сотрудник = 3;'
\echo
SELECT диаграмма FROM ve_диаграмма_скуд WHERE дата = '2022-10-24' AND сотрудник = 3;

\echo
\echo
\echo 'Отображение варианта меню:'
\echo
\echo 'CALL меню(какой_вариант => 3);'
\echo
CALL меню(какой_вариант => 3);

\echo
\echo
\echo 'Открытие нового заказа:'
\echo
\echo 'CALL открыть_новый_заказ(столик_заказа => 5, карта_скидок => 1, акция => 3, в_какое_время => \'2022-10-24 12:30\');'
\echo
CALL открыть_новый_заказ(столик_заказа => 5, карта_скидок => 1, акция => 3, в_какое_время => '2022-10-24 12:30');

\echo
\echo
\echo 'Добавление блюд в заказ:'
\echo
\echo 'CALL добавить_блюдо_в_заказ(в_какой_заказ => 1, какое_блюдо => 21);'
\echo 'CALL добавить_блюдо_в_заказ(в_какой_заказ => 1, какое_блюдо => 21);'
\echo
CALL добавить_блюдо_в_заказ(в_какой_заказ => 1, какое_блюдо => 21);
CALL добавить_блюдо_в_заказ(в_какой_заказ => 1, какое_блюдо => 21);

\echo
\echo
\echo 'Выписка счёта за заказ:'
\echo
\echo 'CALL выписать_счёт(за_какой_заказ => 1, в_какое_время => \'2022-10-24 15:30\');'
\echo
CALL выписать_счёт(за_какой_заказ => 1, в_какое_время => '2022-10-24 15:30');

\echo
\echo
\echo 'Оплата счёта:'
\echo
\echo 'CALL оплатить_счёт(какой_счёт => 1, в_какое_время => \'2022-10-24 15:30\');'
\echo
CALL оплатить_счёт(какой_счёт => 1, в_какое_время => '2022-10-24 15:30');

\echo
\echo
\echo 'Запрос отчёта о заказах в указанную дату:'
\echo
\echo 'CALL заказы_в_дате(\'2022-10-24\');'
\echo
CALL заказы_в_дате('2022-10-24');

\echo
\echo
\echo '    --❬ КОНЕЦ ДЕМОНСТРАЦИИ ЭЛЕМЕНТОВ УСТАНОВЛЕННОЙ БАЗЫ ДАННЫХ ❭--'
\echo

----------------------------------------------------[ END OF SCRIPT ]----------------------------------------------------
