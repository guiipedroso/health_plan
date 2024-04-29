# Database Project: Medical and Employee Management System

<p align="center">
  <img src="http://img.shields.io/static/v1?label=STATUS&message=DONE&color=GREEN&style=for-the-badge"/>
  <img src="http://img.shields.io/static/v1?label=postgresql&message=12.x&color=blue&style=for-the-badge&logo=postgresql"/>
</p>

## Topics

:small_blue_diamond: [Introduction](#introduction)

:small_blue_diamond: [Database Structure](#database-structure)

:small_blue_diamond: [Tables](#main-tables)

:small_blue_diamond: [Functions](#functions)

:small_blue_diamond: [How to Use](#how-to-use)

## Introduction 

This database project was developed for a comprehensive system to manage medical and employee information within an institution. It utilizes SQL and PostgreSQL to ensure a robust and scalable structure.

## Database Structure

### Main Tables

1. **Cidade**: Stores information about cities, essential for the geographical context of the system's information.

2. **Tipo_Plano**: Contains different types of health plans offered to employees and their dependents, along with their respective values.

3. **Pessoa**: Registers essential data about individuals, including name, gender, date of birth, phone number, health plan type, and city of residence.

4. **Funcionario**: Stores specific information about the institution's employees, such as registration number and base salary.

5. **Dependente**: Records dependents associated with employees, along with their degree of relationship.

6. **Instituicao_Ensino**: Contains data about educational institutions, relevant for issuing enrollment certificates.

7. **Atestado_Matricula**: Registers enrollment certificates for employees' dependents.

8. **Cartorio**: Maintains information about registry offices relevant for marriage and civil union records.

9. **Conjuge**: Registers employees' spouses, including details about the type of certificate, date of the event, and information from the registry office.

10. **Medico**: Stores essential data about doctors, such as CRM, office city, and phone number.

11. **Especialidade_Medica**: Contains information about medical specialties, including name and description.

12. **Medico_Especialidade**: Relates doctors to their respective specialties.

13. **Atendimento_Medico**: Registers medical attendances, including information about the type of plan, patient, doctor, specialty, and date/time.

14. **Apresentacao_Medicamento**: Contains information about different medication presentations.

15. **Medicamento**: Registers the medications available in the system.

16. **Prescricao**: Registers medical prescriptions, including data such as associated attendance, prescribed medication, presentation, dosage, frequency, and treatment duration.

### Functions

- **update_Medical_Service**: A function that automatically updates the plan type in a medical service based on the patient's plan type. This function is triggered before insertion into Medical_Service.

### Additional Triggers and Functions

In addition to the main tables and instructions for using the database, the system includes some additional triggers and functions that assist in data manipulation and extraction. Here are some of them:

- **`incrementa`**: A function that simply increments the value of an integer passed as an argument.
- **`fn_pessoa`**: Returns the ID and name of people based on the provided gender argument.
- **`fn_pessoa2`**: Functions similarly to `fn_pessoa`, but uses a different syntax for parameter passing.
- **`fn_pessoa3`**: Returns a table containing the ID and name of people based on the provided gender argument.
- **`fn_pessoa4`**: Returns a table of people ordered by name, or by gender and name, depending on the passed argument.
- **`Fn_Serie`**: Returns a series of numbers between two values passed as arguments, with the ability to generate decreasing series.
- **`Fn_Inteiro_Aleatorio`**: Returns a random integer within a specified limit.
- **`fn_atualiza_telefone`**: Updates a person's phone number based on the provided ID argument.
- **`Fn_Quant_Depend`**: Returns the quantity of dependents associated with an employee based on the provided employee ID argument.

These additional triggers and functions provide extra functionalities that can be useful for various operations in the system, such as data manipulation, numerical series generation, and specific information updates.

## How to Use

To use this database:

1. Execute the provided SQL script in a PostgreSQL environment to create all necessary tables, triggers, and functions.

2. Personalize as needed to meet the specific requirements of your project, adding new tables or modifying existing ones.

3. Ensure to review access permission settings and security configurations to guarantee data integrity and confidentiality.

## Contributing

Contributions are welcome! Feel free to open issues or submit pull requests to enhance this project.
