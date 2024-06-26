CREATE TABLE Owners (
    owner_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
);

CREATE TABLE Dogs (
    dog_id INT PRIMARY KEY,
    name VARCHAR(50),
    breed VARCHAR(50),
    birth_date DATE,
    owner_id INT,
    FOREIGN KEY (owner_id) REFERENCES Owners(owner_id)
);

CREATE TABLE Trainers (
    trainer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
	max_classes_per_day INT CHECK(max_classes_per_day <= 3)
);

CREATE TABLE Classes (
    class_id INT PRIMARY KEY,
    class_name VARCHAR(100),
    class_description VARCHAR(MAX),
    start_time TIME,
    end_time TIME,
    day_of_week VARCHAR(20),
    trainer_id INT,
    FOREIGN KEY (trainer_id) REFERENCES Trainers(trainer_id)
);

CREATE TABLE Trainer_Assignments (
    assignment_id INT PRIMARY KEY IDENTITY(1,1),
    trainer_id INT REFERENCES Trainers(trainer_id),
    class_id INT REFERENCES Classes(class_id),
    assignment_dte DATE NOT NULL
);

--This is my schema design for the desired database:

--1. **Owners Table**:
--   - `owner_id` (Primary Key)
--   - `first_name`
--   - `last_name`
--   - `email`
--   - Other owner-related information (e.g., phone number, address)

--2. **Dogs Table**:
--   - `dog_id` (Primary Key)
--   - `name`
--   - `breed`
--   - `birth_date`
--   - `owner_id` (Foreign Key referencing `Owners` table, to represent the owner of the dog)
--   - Other dog-related information (e.g., colour, weight)

--3. **Classes Table**:
--   - `class_id` (Primary Key)
--   - `class_name` (e.g., Obedience, Agility, etc.)
--   - `class_description`
--   - `start_time` (Time)
--   - `end_time` (Time)
--   - `day_of_week` (e.g., Monday, Tuesday, etc.)
--   - `trainer_id` (Foreign Key referencing `Trainers` table)
--   - Other class-related information (e.g., Difficulty, location)

--4. **Trainers Table**:
--   - `trainer_id` (Primary Key)
--   - `first_name`
--   - `last_name`
--   - `email`
--   - Other trainer-related information (e.g., phone number, address, experience)

--5. **Trainer Assignments **:
--   - `assignment_id` (Primary Key)
--   - `trainer_id` (Foreign Key referencing `Trainers` table)
--   - `class_id` (Foreign Key referencing `Classes` table)
--   - `assignment_date` (Date)
--   - Other trainer-assignment information 

--Owners can have one or many dogs, which means there is a one-to-many relationship between Owners and Dogs. 
--To represent this, the `Dogs` table includes an `owner_id` field, which is a foreign key referencing the `Owners` table.

--Dogs can have one or many owners, which also implies a one-to-many relationship. 
--The `owner_id` field in the `Dogs` table allows multiple owners to be associated with a dog.

--Trainers will train many classes, but not more than 3 classes per day.
--To manage this constraint, I have created another table to keep track of trainer trainer assignments to classes with a field for the date.

--With this basic schema, you can capture information about owners, their dogs, the training classes they attend, and the trainers who lead the classes.
--You may also want to consider additional tables or fields to handle specific details such as 
--class schedules, enrollment, and payments, depending on the requirements of your Dog Training Academy application.
