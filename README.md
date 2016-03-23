# RESTfulAPI
Code for building RESTful APIs in Rails

# API Endpoints
-----------------
## 1. Show all Cribs
**_Returns JSON of all the Cribs_**
+ URL
    `http://localhost:3000/api/cribs`
+ Method
    `GET`
+ Success Response
    + Code: 200
    + Content 
    ```json
    {
  "cribs": [
    {
      "data": {
        "description": "3 bedroom flat at Adenta",
        "owner_id": 1,
        "tenants": 2,
        "relationship": {
          "owner": {
            "first_name": "Yaw",
            "last_name": "Boakye",
            "email": "yaw@meltwater.org"
          },
          "tenant": [
            {
              "name": "Iverson John",
              "age": 23,
              "national_id": "2WER4559803",
              "school_id": 1
            },
            {
              "name": "John Doe",
              "age": 22,
              "national_id": "0POP123456",
              "school_id": 2
            }
          ]
        }
      }
    },
    {
      "data": {
        "description": "2 bedroom apartment at East Legon",
        "owner_id": 2,
        "tenants": 1,
        "relationship": {
          "owner": {
            "first_name": "Frank",
            "last_name": "Nwolisa",
            "email": "franknwolisa@gmail.com"
          },
          "tenant": [
            {
              "name": "Iyke Owoh",
              "age": 26,
              "national_id": "4CQE7709213",
              "school_id": 1
            }
          ]
        }
      }
    },
    {
      "data": {
        "description": "4 bedroom flat at Kumasi",
        "owner_id": 1,
        "tenants": 0,
        "relationship": {
          "owner": {
            "first_name": "Yaw",
            "last_name": "Boakye",
            "email": "yaw@meltwater.org"
          },
          "tenant": []
        }
      }
    }
  ]
  }
    ```
-----------------------------------    
## 2. Show one Crib
**_Returns JSON of one crib_**

+ URL
    `http://localhost:3000/api/cribs/3`
+ Method
    `GET`
+ URL Params
  ##### Required:
  `id=[integer]`
+ Success Response
    + Code: 200
    + Sample Response
```json
{
    "data": {
        "description": "3 bedroom flat at Adenta",
        "owner_id": 1,
        "tenants": 2,
        "relationship": {
            "owner": {
                "first_name": "Yaw",
                "last_name": "Boakye",
                "email": "yaw@meltwater.org"
            },
            "tenants": [
                {
                    "name": "Iverson John",
                    "age": 23,
                    "national_id": "2WER4559803",
                    "school_id": 1
                },
                {
                    "name": "John Doe",
                    "age": 22,
                    "national_id": "0POP123456",
                    "school_id": 2
                }
            ]
        }
    }
}
```
+ Error Response
    + Code: 404
    + Content :
```json
{
  "error": {
    "message": "Couldn't find Cribb with 'id'=12",
    "code": 800
  }
}
```
-----------------------------------    
## 3. Create a new Crib
**_Returns JSON of a newly created crib_**

+ URL
    `http://localhost:3000/api/cribs`
+ Method
    `POST`
+ Data Params
  ##### Required:
  `Description: String`,`Owner_id: Integer`
+ Sample Code
```json
{
    "data": {
        "description": "2 bedroom flat at Lekki Phase 1", 
        "owner_id": 1
    }
}
```
+ Success Response
    + Code: 201
    + Sample Response
```json
{
  "data": {
    "message": "Crib successfully created",
    "code": 900
  }
}
```
+ Error Response
    + Code: 404
    + Content :
```json
{
  "error": {
    "message": "Couldn't find Owner with 'id'=10",
    "code": 800
  }
}
```

-------------------------------------
## 3. Update an existing Crib
**_Returns JSON for updated crib_**

+ URL
    `http://localhost:3000/api/cribs/1`
+ Method
    `PUT`
+ URL Params
  ##### Required:
    `id=[integer]`
+ Data Params
  ##### Required:
  `Description: String`,`Owner_id: Integer`
+ Sample Code
```json
{
    "data": {
        "description": "3 bedroom flat at Madina", 
        "owner_id": 1
    }
}
```
+ Success Response
    + Code: 200
    + Sample Response
```json
{
  "data": {
    "message": "Crib successfully updated",
    "code": 900
  }
}
```
+ Error Response
    + Code: 404
    + Content:
```json
{
  "error": {
    "message": "Couldn't find Owner with 'id'=10",
    "code": 800
  }
}
```
--------------------------------
## 4. Delete an existing Crib
**_Returns JSON for deleted crib_**

+ URL
    `http://localhost:3000/api/cribs/4`
+ Method
    `DELETE`
+ URL Params
  ##### Required:
    `id=[integer]`
+ Success Response
    + Code: 202
    + Sample Response
```json
{
  "data": {
    "message": "Crib successfully deleted",
    "code": 900
  }
}
```
+ Error Response
    + Code: 404
    + Content:
```json
{
  "error": {
    "message": "Couldn't find Cribb with 'id'=4",
    "code": 800
  }
}
```

    
