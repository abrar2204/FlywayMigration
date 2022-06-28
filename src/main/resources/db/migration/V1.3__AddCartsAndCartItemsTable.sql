CREATE TABLE cart (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users (id)
);

CREATE TABLE cart_item (
    id SERIAL PRIMARY KEY,
    cart_id INTEGER REFERENCES cart (id),
    product_id INTEGER REFERENCES product (id),
    quantity INTEGER
);

