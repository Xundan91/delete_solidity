

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract CarRegistry {
    struct Car {
        string model;
        bool isRented;
    }

    mapping(uint => Car) private cars;
    
    mapping(string => uint) private carIds;

    event CarRegistered(uint carId, string model);
    event CarRented(uint carId, string model);
    event CarReturned(uint carId, string model);

    function registerCar(uint _carId, string memory _model) public {
        require(bytes(_model).length > 0, "Car model cannot be empty");
        require(!cars[_carId].isRented, "Car already exists");
        
        cars[_carId] = Car({
            model: _model,
            isRented: false
        });
        
        carIds[_model] = _carId;

        emit CarRegistered(_carId, _model);
    }

    function rentCarById(uint _carId) public {
        require(!cars[_carId].isRented, "Car is already rented");
        assert(bytes(cars[_carId].model).length > 0);

        cars[_carId].isRented = true;

        emit CarRented(_carId, cars[_carId].model);
    }

    function returnCarById(uint _carId) public {
        if (bytes(cars[_carId].model).length == 0) {
            revert("Car does not exist");
        }
        require(cars[_carId].isRented, "Car is not rented");

        cars[_carId].isRented = false;

        emit CarReturned(_carId, cars[_carId].model);
    }

    function isAvailable(uint _carId) public view returns (bool) {
        return bytes(cars[_carId].model).length > 0 && !cars[_carId].isRented;
    }

    function getCarByModel(string memory _model) public view returns (uint carId, string memory model, bool isRented) {
        uint _carId = carIds[_model];
        Car memory car = cars[_carId];
        return (_carId, car.model, car.isRented);
    }
}
