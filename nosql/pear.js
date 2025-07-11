// DATABASE USE
const DB_NAME = "pear";
use(DB_NAME);

// CUSTOMERS
db.createCollection("customers", {
  validator: {
    $jsonSchema: {
      bsonType: "object",
      required: ["firstName", "lastName", "email", "phoneNumber", "birthday", "countryId", "address", "creationDate", "modificationTime"],
      properties: {
        _id: { bsonType: "objectId" },
        firstName: { bsonType: "string" },
        lastName: { bsonType: "string" },
        email: { bsonType: "string", pattern: "^.+@.+\\..+$" },
        phoneNumber: { bsonType: "string" },
        birthday: { bsonType: "date" },
        countryId: { bsonType: "objectId" },
        address: { bsonType: "string" },
        creationDate: { bsonType: "date" },
        modificationTime: { bsonType: "date" }
      }
    }
  }
});
//  --  indexes
db.customers.createIndex({ email: 1 }, { unique: true });
db.customers.createIndex({ countryId: 1 });


// SALEST POINTS
db.createCollection("salesPoints", {
  validator: {
    $jsonSchema: {
      bsonType: "object",
      required: ["cityId", "address", "modificationTime", "employees"],
      properties: {
        _id: { bsonType: "objectId" },
        cityId: { bsonType: "objectId" },
        address: { bsonType: "string" },
        contactNumbers: { bsonType: "array", items: { bsonType: "string" } },
        modificationTime: { bsonType: "date" },
        employees: {
          bsonType: "array",
          items: {
            bsonType: "object",
            required: ["employeeId"],
            properties: {
              employeeId: { bsonType: "objectId" }
            }
          }
        }
      }
    }
  }
});
//  --  indexes
db.salesPoints.createIndex({ cityId: 1, contactNumbers: 1 });
db.salesPoints.createIndex({ "employees.employeeId": 1 });


// SALESTERRITORIES
db.createCollection("salesTerritories", {
  validator: {
    $jsonSchema: {
      bsonType: "object",
      required: ["name", "countries"],
      properties: {
        _id: { bsonType: "objectId" },
        name: { bsonType: "string" },
        countries: {
          bsonType: "array",
          items: {
            bsonType: "object",
            required: ["countryId", "name", "code", "cities"],
            properties: {
              countryId: { bsonType: "objectId" },
              name: { bsonType: "string" },
              code: { bsonType: "string" },
              cities: {
                bsonType: "array",
                items: {
                  bsonType: "object",
                  required: ["cityId", "name", "postalCode"],
                  properties: {
                    cityId: { bsonType: "objectId" },
                    name: { bsonType: "string" },
                    postalCode: { bsonType: "string" }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
});
//  --  indexes
db.salesTerritories.createIndex({ "countries.countryId": 1 });


// EMPLOYEES
db.createCollection("employees", {
  validator: {
    $jsonSchema: {
      bsonType: "object",
      required: ["firstName", "lastName", "email", "phoneNumber"],
      properties: {
        _id: { bsonType: "objectId" },
        firstName: { bsonType: "string" },
        lastName: { bsonType: "string" },
        email: { bsonType: "string", pattern: "^.+@.+\\..+$" },
        phoneNumber: { bsonType: "string" }
      }
    }
  }
});
//  --  indexes
db.employees.createIndex({ email: 1 }, { unique: true });


// PRODUCTS
db.createCollection("products", {
  validator: {
    $jsonSchema: {
      bsonType: "object",
      required: ["code", "name", "price", "status", "category", "questions"],
      properties: {
        _id: { bsonType: "objectId" },
        code: { bsonType: "string" },
        name: { bsonType: "string" },
        price: { bsonType: "double" },
        status: { bsonType: "string" },
        category: { bsonType: "string" },
        questions: {
          bsonType: "array",
          items: {
            bsonType: "object",
            required: ["title", "body", "creationTime", "customerId", "answers"],
            properties: {
              title: { bsonType: "string" },
              body: { bsonType: "string" },
              creationTime: { bsonType: "date" },
              customerId: { bsonType: "objectId" },
              answers: {
                bsonType: "array",
                items: {
                  bsonType: "object",
                  required: ["body", "employeeId"],
                  properties: {
                    body: { bsonType: "string" },
                    employeeId: { bsonType: "objectId" }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
});
//  --  indexes
db.products.createIndex({ code: 1 }, { unique: true });


// ORDERS
db.createCollection("orders", {
  validator: {
    $jsonSchema: {
      bsonType: "object",
      required: ["orderTime", "customerId", "details"],
      properties: {
        _id: { bsonType: "objectId" },
        orderTime: { bsonType: "date" },
        deliveryDate: { bsonType: "date" },
        deliveryCost: { bsonType: "double" },
        orderStatus: { bsonType: "string" },
        customerId: { bsonType: "objectId" },
        details: {
          bsonType: "array",
          items: {
            bsonType: "object",
            required: ["productCode", "quantity", "transactionPrice", "discountPercentage"],
            properties: {
              productCode: { bsonType: "string" },
              quantity: { bsonType: "int" },
              transactionPrice: { bsonType: "double" },
              discountPercentage: { bsonType: "double" }
            }
          }
        }
      }
    }
  }
});
//  --  indexes
db.orders.createIndex({ customerId: 1 });
db.orders.createIndex({ orderTime: 1 });
db.orders.createIndex({ customerId: 1, orderStatus: 1 });
db.orders.createIndex({ "details.productCode": 1 });



// DEFINE
const POLAND_ID = ObjectId("000000000000000000000001");
const NIGERIA_ID = ObjectId("000000000000000000000002");
const KENYA_ID = ObjectId("000000000000000000000003");
const CHINA_ID = ObjectId("000000000000000000000004");
const JAPAN_ID = ObjectId("000000000000000000000005");
const INDIA_ID = ObjectId("000000000000000000000006");

const LUBAN_ID = ObjectId("111111111111111111111101");
const ABUJA_ID = ObjectId("111111111111111111111102");
const NAIROBI_ID = ObjectId("111111111111111111111103");
const BEIJING_ID = ObjectId("111111111111111111111104");
const TOKYO_ID = ObjectId("111111111111111111111105");
const DELHI_ID = ObjectId("111111111111111111111106");

const JAN_ID = ObjectId("900000000000000000000001");
const ANNA_ID = ObjectId("900000000000000000000002");
const PIOTR_ID = ObjectId("900000000000000000000003");
const MAGDA_ID = ObjectId("900000000000000000000004");
const TOMASZ_ID = ObjectId("900000000000000000000005");
const KAROLINA_ID = ObjectId("900000000000000000000006");
const MAREK_ID = ObjectId("900000000000000000000007");
const JOANNA_ID = ObjectId("900000000000000000000008");
const PAWEL_ID = ObjectId("900000000000000000000009");

const EMP1_ID = ObjectId("222222222222222222222201");
const EMP2_ID = ObjectId("222222222222222222222202");
const EMP3_ID = ObjectId("222222222222222222222203");
const EMP4_ID = ObjectId("222222222222222222222204");
const EMP5_ID = ObjectId("222222222222222222222205"); //unemployed
const EMP6_ID = ObjectId("222222222222222222222206");

const SP1_ID = ObjectId("333333333333333333333301");
const SP2_ID = ObjectId("333333333333333333333302");


// DATA
db.salesTerritories.insertMany([
  {
    name: "Africa",
    countries: [
      {
        countryId: POLAND_ID,
        name: "Poland",
        code: "48",
        cities: [
          {
            cityId: LUBAN_ID,
            name: "Luban",
            postalCode: "66-696"
          }
        ]
      },
      {
        countryId: NIGERIA_ID,
        name: "Nigeria",
        code: "234",
        cities: [
          {
            cityId: ABUJA_ID,
            name: "Abuja",
            postalCode: "900001"
          }
        ]
      },
      {
        countryId: KENYA_ID,
        name: "Kenya",
        code: "254",
        cities: [
          {
            cityId: NAIROBI_ID,
            name: "Nairobi",
            postalCode: "00100"
          }
        ]
      }
    ]
  },
  {
    name: "Asia",
    countries: [
      {
        countryId: CHINA_ID,
        name: "China",
        code: "86",
        cities: [
          {
            cityId: BEIJING_ID,
            name: "Beijing",
            postalCode: "100000"
          }
        ]
      },
      {
        countryId: JAPAN_ID,
        name: "Japan",
        code: "81",
        cities: [
          {
            cityId: TOKYO_ID,
            name: "Tokyo",
            postalCode: "100-0001"
          }
        ]
      },
      {
        countryId: INDIA_ID,
        name: "India",
        code: "91",
        cities: [
          {
            cityId: DELHI_ID,
            name: "New Delhi",
            postalCode: "110001"
          }
        ]
      }
    ]
  }
]);

db.customers.insertMany([
  {
    _id: JAN_ID,
    firstName: "Jan",
    lastName: "Kowalski",
    email: "jan.kowalski@example.com",
    phoneNumber: "+48123456789",
    birthday: new Date("1990-01-01"),
    countryId: POLAND_ID,
    address: "Kwiatowa 15",
    creationDate: new Date("2024-03-01"),
    modificationTime: new Date("2025-03-24T10:38:00Z")
  },
  {
    _id: ANNA_ID,
    firstName: "Anna",
    lastName: "Nowak",
    email: "anna.nowak@example.com",
    phoneNumber: "+48987654321",
    birthday: new Date("1985-06-15"),
    countryId: POLAND_ID,
    address: "Ogrodowa 10",
    creationDate: new Date("2024-03-02"),
    modificationTime: new Date("2025-03-25T09:20:00Z")
  },
  {
    _id: PIOTR_ID,
    firstName: "Piotr",
    lastName: "Zieliński",
    email: "piotr.zielinski@example.com",
    phoneNumber: "+48777777777",
    birthday: new Date("1992-11-05"),
    countryId: NIGERIA_ID,
    address: "Słoneczna 8",
    creationDate: new Date("2024-03-03"),
    modificationTime: new Date("2025-03-26T08:15:00Z")
  },
  {
    _id: MAGDA_ID,
    firstName: "Magda",
    lastName: "Kaczmarek",
    email: "magda.kaczmarek@example.com",
    phoneNumber: "+48555123456",
    birthday: new Date("1988-09-22"),
    countryId: KENYA_ID,
    address: "Leśna 12",
    creationDate: new Date("2024-03-04"),
    modificationTime: new Date("2025-03-27T07:05:00Z")
  },
  {
    _id: TOMASZ_ID,
    firstName: "Tomasz",
    lastName: "Lewandowski",
    email: "tomasz.lewandowski@example.com",
    phoneNumber: "+48666666666",
    birthday: new Date("1991-03-03"),
    countryId: JAPAN_ID,
    address: "Polna 33",
    creationDate: new Date("2024-03-05"),
    modificationTime: new Date("2025-03-28T11:00:00Z")
  },
  {
    _id: KAROLINA_ID,
    firstName: "Karolina",
    lastName: "Wójcik",
    email: "karolina.wojcik@example.com",
    phoneNumber: "+48441234567",
    birthday: new Date("1993-12-12"),
    countryId: JAPAN_ID,
    address: "Kolejowa 22",
    creationDate: new Date("2024-03-06"),
    modificationTime: new Date("2025-03-29T12:10:00Z")
  },
  {
    _id: MAREK_ID,
    firstName: "Marek",
    lastName: "Mazur",
    email: "marek.mazur@example.com",
    phoneNumber: "+48881234567",
    birthday: new Date("1980-04-01"),
    countryId: INDIA_ID,
    address: "Warszawska 1",
    creationDate: new Date("2024-03-07"),
    modificationTime: new Date("2025-03-30T13:30:00Z")
  },
  {
    _id: JOANNA_ID,
    firstName: "Joanna",
    lastName: "Kubiak",
    email: "joanna.kubiak@example.com",
    phoneNumber: "+48611234567",
    birthday: new Date("1995-07-20"),
    countryId: CHINA_ID,
    address: "Spacerowa 5",
    creationDate: new Date("2024-03-08"),
    modificationTime: new Date("2025-03-31T14:40:00Z")
  },
  {
    _id: PAWEL_ID,
    firstName: "Paweł",
    lastName: "Jankowski",
    email: "pawel.jankowski@example.com",
    phoneNumber: "+48500234567",
    birthday: new Date("1983-02-28"),
    countryId: CHINA_ID,
    address: "Rzemieślnicza 99",
    creationDate: new Date("2024-03-09"),
    modificationTime: new Date("2025-04-01T15:50:00Z")
  }
]);

db.employees.insertMany([
  {
    _id: EMP1_ID,
    firstName: "Anna",
    lastName: "Nowak",
    email: "anna.nowak@example.com",
    phoneNumber: "+48111111111"
  },
  {
    _id: EMP2_ID,
    firstName: "Michał",
    lastName: "Wiśniewski",
    email: "michal.wisniewski@example.com",
    phoneNumber: "+48222222222"
  },
  {
    _id: EMP3_ID,
    firstName: "Ewa",
    lastName: "Kowalczyk",
    email: "ewa.kowalczyk@example.com",
    phoneNumber: "+48333333333"
  },
  {
    _id: EMP4_ID,
    firstName: "Krzysztof",
    lastName: "Wójcik",
    email: "krzysztof.wojcik@example.com",
    phoneNumber: "+48444444444"
  },
  {
    _id: EMP5_ID,
    firstName: "Agnieszka",
    lastName: "Kamińska",
    email: "agnieszka.kaminska@example.com",
    phoneNumber: "+48555555555"
  },
  {
    _id: EMP6_ID,
    firstName: "Tomasz",
    lastName: "Lewicki",
    email: "tomasz.lewicki@example.com",
    phoneNumber: "+48666666666"
  }
]);

db.salesPoints.insertMany([
  {
    _id: SP1_ID,
    cityId: LUBAN_ID,
    address: "Handlowa 1",
    contactNumbers: ["+48700100200", "+48700100201"],
    modificationTime: new Date("2025-03-24T10:38:00Z"),
    employees: [
      { employeeId: EMP1_ID },
      { employeeId: EMP2_ID },
      { employeeId: EMP6_ID }
    ]
  },
  {
    _id: SP2_ID,
    cityId: ABUJA_ID,
    address: "Market Street 55",
    contactNumbers: ["+2348001234567"],
    modificationTime: new Date("2025-03-24T11:00:00Z"),
    employees: [
      { employeeId: EMP3_ID },
      { employeeId: EMP4_ID }
    ]
  }
]);

db.products.insertMany([
  {
    code: "P1001",
    name: "yPhone X",
    price: 3999.99,
    status: "available",
    category: "phone",
    questions: [
      {
        title: "Czy działa z eSIM?",
        body: "Czy ten model obsługuje eSIM?",
        creationTime: new Date("2025-04-01T12:00:00Z"),
        customerId: JAN_ID,  // <-- Added customerId reference
        answers: [
          {
            body: "Tak, obsługuje.",
            employeeId: EMP1_ID
          }
        ]
      },
      {
        title: "Czy ma gniazdo słuchawkowe?",
        body: "Czy yPhone X posiada klasyczne gniazdo audio?",
        creationTime: new Date("2025-04-02T08:30:00Z"),
        customerId: ANNA_ID,  // <-- Added customerId reference
        answers: [
          {
            body: "Nie, używa tylko Bluetooth.",
            employeeId: EMP2_ID
          }
        ]
      }
    ]
  },
  {
    code: "P1002",
    name: "yPad Mini",
    price: 2999.50,
    status: "planned",
    category: "tablet",
    questions: []  // No questions for this product
  },
  {
    code: "P1005",
    name: "yCamera Pro",
    price: 2599.99,
    status: "available",
    category: "camera",
    questions: [
      {
        title: "Czy ma stabilizację obrazu?",
        body: "Interesuje mnie jakość wideo podczas ruchu.",
        creationTime: new Date("2025-04-08T10:00:00Z"),
        customerId: MAREK_ID,
        answers: [
          {
            body: "Tak, posiada optyczną stabilizację obrazu.",
            employeeId: EMP1_ID
          }
        ]
      },
      {
        title: "Czy można nagrywać w 4K?",
        body: "Czy kamera wspiera 4K przy 60 fps?",
        creationTime: new Date("2025-04-09T12:30:00Z"),
        customerId: JOANNA_ID,
        answers: [
          {
            body: "Tak, obsługuje 4K przy 60 fps.",
            employeeId: EMP2_ID
          }
        ]
      },
      {
        title: "Czy jest wodoodporna?",
        body: "Chciałbym używać jej podczas nurkowania.",
        creationTime: new Date("2025-04-10T15:45:00Z"),
        customerId: PAWEL_ID,
        answers: [
          {
            body: "Tak, do 10 metrów bez obudowy.",
            employeeId: EMP3_ID
          }
        ]
      },
      {
        title: "Czy ma wymienną baterię?",
        body: "Planuję długie nagrania i chciałbym wymieniać baterię.",
        creationTime: new Date("2025-04-11T09:20:00Z"),
        customerId: ANNA_ID,
        answers: [
          {
            body: "Tak, bateria jest wymienna.",
            employeeId: EMP4_ID
          }
        ]
      }
    ]
  },
  {
    code: "P1006",
    name: "ySpeaker Max",
    price: 499.01,
    status: "available",
    category: "audio",
    questions: [
      {
        title: "Czy wspiera Bluetooth 5.2?",
        body: "Zależy mi na najnowszym standardzie.",
        creationTime: new Date("2025-04-12T17:10:00Z"),
        customerId: TOMASZ_ID,
        answers: [
          {
            body: "Tak, model obsługuje Bluetooth 5.2.",
            employeeId: EMP6_ID
          }
        ]
      }
    ]
  }
]);

db.orders.insertMany([
  {
    orderTime: new Date("2025-05-01T10:15:00Z"),
    deliveryDate: new Date("2025-05-04T14:00:00Z"),
    deliveryCost: 25.01,
    orderStatus: "delivered",
    customerId: JAN_ID,
    details: [
      {
        productCode: "P1001", // yPhone X
        quantity: 1,
        transactionPrice: 3899.99,
        discountPercentage: 2.5
      }
    ]
  },
  {
    orderTime: new Date("2025-05-05T16:45:00Z"),
    deliveryCost: 15.01,
    orderStatus: "processing",
    customerId: ANNA_ID,
    details: [
      {
        productCode: "P1002", // yPad Mini
        quantity: 2,
        transactionPrice: 2899.50,
        discountPercentage: 5.1
      }
    ]
  },
  {
    orderTime: new Date("2025-05-08T09:30:00Z"),
    deliveryDate: new Date("2025-05-10T11:00:00Z"),
    deliveryCost: 30.01,
    orderStatus: "delivered",
    customerId: PIOTR_ID,
    details: [
      {
        productCode: "P1003", // yWatch Ultra
        quantity: 1,
        transactionPrice: 1799.01,
        discountPercentage: 0.1
      },
      {
        productCode: "P1006", // ySpeaker Max
        quantity: 1,
        transactionPrice: 499.01,
        discountPercentage: 2.1
      }
    ]
  },
  {
    orderTime: new Date("2025-05-09T13:20:00Z"),
    deliveryCost: 20.01,
    orderStatus: "shipped",
    customerId: MAGDA_ID,
    details: [
      {
        productCode: "P1005", // yCamera Pro
        quantity: 1,
        transactionPrice: 2499.99,
        discountPercentage: 10.1
      }
    ]
  },
  {
    orderTime: new Date("2025-05-12T18:10:00Z"),
    deliveryCost: 18.01,
    orderStatus: "processing",
    customerId: MAREK_ID,
    details: [
      {
        productCode: "P1004", // yLaptop Pro
        quantity: 1,
        transactionPrice: 6799.01,
        discountPercentage: 5.1
      }
    ]
  }
]);