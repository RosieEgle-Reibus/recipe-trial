CREATE DATABASE recipe-trial

CREATE TABLE purchase-unit (
    purchase_unit_id SERIAL PRIMARY KEY,
    purchase_unit
)

CREATE TABLE ingredients (
    ingredient_id SERIAL PRIMARY KEY,
    ingredient_name VARCHAR(50),
    purchase_price INT,
    purchase_unit_id INT NOT NULL,
    CONSTRAINT fk_purchase_unit_id FOREIGN KEY (purchase_unit_id)
    REFERENCES purchase-unit(purchase_unit_id)
)

CREATE TABLE recipes (
    recipe_id SERIAL PRIMARY KEY,
    recipe_name VARCHAR(100)
)

CREATE TABLE measurements (
    measurement_id SERIAL PRIMARY KEY,
    measurement VARCHAR(20)
)

CREATE TABLE recipe_junction (
    recipe_id INT NOT NULL,
    ingredient_id INT NOT NULL,
    measurement_id INT NOT NULL,
    amount INT
    CONSTRAINT fk_recipe_id FOREIGN KEY (recipe_id)
    REFERENCES recipes(recipe_id),
    CONSTRAINT fk_ingredient_id FOREIGN KEY (ingredient_id)
    REFERENCES ingredients(ingredient_id),
    CONSTRAINT fk_measurement_id FOREIGN KEY (measurement_id)
    REFERENCES measurements(measurement_id)
)