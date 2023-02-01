#creating a database
Create database freezyStore;

#Selecting the database freezyStore
use freezyStore;

# creating the necessary tables

# creating the bookInfo table
CREATE TABLE books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(100) NOT NULL,
    ISBN VARCHAR(50) NOT NULL,
    publication_date DATE NOT NULL,
    publisher VARCHAR(100) NOT NULL,
    genre VARCHAR(50) NOT NULL,
    pages INT NOT NULL,
    price DECIMAL(10 , 2 ) NOT NULL,
    stock INT NOT NULL,
    book_comment VARCHAR(255)
);

#inserting data into the table 'books'
INSERT INTO Books (title, author, ISBN, publication_date, publisher, genre, pages, price, stock, book_comment)
VALUES
    ('Things Fall Apart', 'Chinua Achebe', '9780385474542', '1958-01-01', 'Anchor Books', 'Novel', 209, 12.99, 20, 'A classic of African literature'),
    ('Half of a Yellow Sun', 'Chimamanda Ngozi Adichie', '9781608196104', '2006-02-01', 'Vintage', 'Historical fiction', 468, 15.99, 10, 'A powerful and emotional novel'),
    ('The Famished Road', 'Ben Okri', '9780141189730', '1991-03-01', 'Penguin Classics', 'Magical realism', 512, 16.99, 5, 'A beautifully written story of one mans journey through the Nigerian Civil War'),
    ('A Man of the People', 'Chinua Achebe', '9780141189778', '1966-04-01', 'Penguin Classics', 'Political satire', 160, 8.99, 15, 'A biting satire on the state of Nigerian politics'),
    ('The Secret Lives of Baba Segis Wives', 'Lola Shoneyin', '9781447202444', '2010-05-01', 'Picador', 'Womens fiction', 256, 12.99, 25, 'A captivating story of family and secrets'),
    ('The Thing Around Your Neck', 'Chimamanda Ngozi Adichie', '9781608193616', '2009-06-01', 'Anchor', 'Short stories', 224, 9.99, 30, 'A collection of powerful short stories about love and identity'),
    ('Arrow of God', 'Chinua Achebe', '9780141182311', '1964-07-01', 'Penguin Classics', 'Novel', 288, 13.99, 20, 'A novel that explores the collision of tradition and modernity in pre-colonial Nigeria'),
    ('Americanah', 'Chimamanda Ngozi Adichie', '9780307455925', '2013-08-01', 'Anchor', 'Romantic fiction', 477, 14.99, 15, 'A story of love and race, set between Nigeria and the United States'),
    ('The Joys of Motherhood', 'Buchi Emecheta', '9780141189792', '1979-09-01', 'Penguin Classics', 'Feminism', 256, 10.99, 10, 'A powerful and moving novel about the struggles of a Nigerian woman'),
    ('The Last Duty', 'Chinua Achebe', '9781846553935', '2008-10-01', 'Vintage', 'Autobiography', 256, 11.99, 5, 'A memoir of Chinua Achebes life and work');


# Creating the Customers table
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(50) NOT NULL,
    phone bigint NOT NULL,
    address VARCHAR(150) NOT NULL
);
   
#inserting in customer table
INSERT INTO customers (customer_name, email, phone, address)
VALUES ('Adebayo Adekola', 'adebayoadekola@example.com', '+2348012345678', '1234 Main St, Lagos'),
       ('Adekunle Adegoke', 'adekunleadegoke@example.com', '+2348098765432', '5678 Park Ave, Abuja'),
       ('Ademola Adekoya', 'ademolaadekoya@example.com', '+2348055555555', '91011 Elm St, Port Harcourt'),
       ('Adeniyi Adegbonmire', 'adeniyiadegbonmire@example.com', '+23480666666666', '99999 Oak St, Kano'),
       ('Adeoye Adekunle', 'adeoyeadekunle@example.com', '+23480777777777', '11111 Pine St, Ibadan'),
       ('Adesina Adekoya', 'adesinaadekoya@example.com', '+23480888888888', '22222 Cedar St, Jos'),
       ('Adetoun Adegoke', 'adetounadegoke@example.com', '+23480999999999', '33333 Birch St, Benin City'),
       ('Adewale Adekunle', 'adewaleadekunle@example.com', '+23480111111111', '44444 Maple St, Abeokuta'),
       ('Adeyemi Adegbenro', 'adeyemiadegbenro@example.com', '+23480122222222', '55555 Willow St, Enugu'),
       ('Adedoyin Adekoya', 'adedoyinadekoya@example.com', '+23480133333333', '66666 Dogwood St, Calabar');

    
# Creating the Employees table
CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) Not Null,
    last_name VARCHAR(50) Not Null,
    email VARCHAR(50) NOT NULL,
    phone bigint NOT NULL,
    address VARCHAR(150) NOT NULL,
    qualification VARCHAR(100),
    job_title VARCHAR(50) NOT NULL,
    salary DECIMAL(10,2) NOT NULL,
	hire_date DATE,
    nok_name VARCHAR(100),
    nok_phone BIGINT
);

# inserting values into employees table

INSERT INTO employees (first_name, last_name, email, phone, address, qualification, job_title, salary, hire_date, nok_name, nok_phone)
VALUES
("John", "Doe", "johndoe@example.com", 1234567890, "1 Example Street, Lagos", "B.Sc", "Software Developer", 50000.00, "2022-01-01", "Jane Doe", 0987654321),
("Joseph", "Doe", "janedoe@example.com", 1234567890, "2 Example Street, Lagos", "B.Sc", "Accountant", 40000.00, "2022-02-01", "Mary Doe", 0987654321),
("Michael", "Johnson", "michaelj@example.com", 1234567890, "3 Example Street, Lagos", "B.Sc", "Engineer", 60000.00, "2022-03-01", "Mary Johnson", 0987654321),
("Mary", "Johnson", "maryj@example.com", 1234567890, "4 Example Street, Lagos", "B.Sc", "Economist", 55000.00, "2022-04-01", "Michael Johnson", 0987654321),
("Emily", "Williams", "emilyw@example.com", 1234567890, "5 Example Street, Lagos", "B.Sc", "Sales Attendant", 45000.00, "2022-05-01", "Brian Williams", 0987654321),
("Brian", "Williams", "brianw@example.com", 1234567890, "6 Example Street, Lagos", "B.Sc", "Sales Attendant", 35000.00, "2022-06-01", "Emily Williams", 0987654321),
("Jessica", "Jones", "jessicaj@example.com", 1234567890, "7 Example Street, Lagos", "B.Sc", "Lawyer", 75000.00, "2022-07-01", "Mark Jones", 0987654321),
("Mark", "Jones", "markj@example.com", 1234567890, "8 Example Street, Lagos", "B.Sc", "Manager", 80000.00, "2022-08-01", "Jessica Jones", 0987654321),
("Ashley", "Brown", "ashleyb@example.com", 1234567890, "9 Example Street, Lagos", "B.Sc", "Architect", 65000.00, "2022-09-01", "David Brown", 0987654321),
("David", "Brown", "davidb@example.com", 1234567890, "10 Example Street, Lagos", "B.Sc", "Security", 70000.00, "2022-10-01", "Ashley Brown", 0987654321);

#Creating the Suppliers table
CREATE TABLE suppliers (
    supplier_id INT AUTO_INCREMENT PRIMARY KEY,
    supplier_name VARCHAR(100) NOT NULL,
    email VARCHAR(50) NOT NULL,
    phone BIGINT NOT NULL,
    supplier_address VARCHAR(150)
);

# Creating the Supplies table
CREATE TABLE supplies (
    supply_id INT AUTO_INCREMENT PRIMARY KEY,
    supplier_id INT NOT NULL,
    book_id INT NOT NULL,
    price DECIMAL(10,2),
    rep_name varchar(100) NOT NULL,
    rep_phone bigint NOT NULL,
    quantity int NOT NULL,
    supply_comment varchar(255),
    FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id)
    );
    
# Creating the sales table
CREATE TABLE sales (
    sale_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    sale_date DATE NOT NULL,
    customer_id INT NOT NULL,
    book_id INT NOT NULL,
    employee_name VARCHAR(100),
    quantity INT NOT NULL,
    sale_price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);

# inserting data into sales table, this data is expected to update the book table using the trigger
INSERT INTO sales (sale_date, customer_id, book_id, employee_name, quantity, sale_price)
VALUES ('2022-01-01', 1, 1, 'John Doe', 1, 12.99);


#creating view for Topselling books
CREATE VIEW TopSellingBooks_view AS
    SELECT 
        books.book_id,
        books.author,
        title,
        SUM(sales.quantity) AS units_sold
    FROM
        Books
            INNER JOIN
        sales ON Books.book_id = sales.book_id
    GROUP BY title
    ORDER BY units_sold DESC
    LIMIT 5;


# creating trigger that update stock
CREATE 
    TRIGGER  update_stock
 AFTER INSERT ON sales FOR EACH ROW 
    UPDATE books SET stock = stock - NEW.quantity WHERE
        book_id = NEW.book_id;


#creating view when the stock is less or equal to 5
CREATE VIEW OutOfStockBooks AS
    SELECT 
        book_id, title, stock
    FROM
        Books
    WHERE
        stock <= 5;


