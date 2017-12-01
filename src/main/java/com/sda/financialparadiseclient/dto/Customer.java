package com.sda.financialparadiseclient.dto;

import com.sda.financialparadiseclient.validation.PeselValidator;
import lombok.Getter;
import lombok.Setter;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;


@Getter
@Setter
public class Customer {

    private Integer id;
    @NotNull
    private String firstName;
    @NotNull
    private String lastName;
    @NotNull
    @Size(min = 11, max = 11)
    @PeselValidator
    private String pesel;
    @NotNull
    private String email;
    @NotNull
    private String password;

    public Customer() {
    }

    public Customer(String firstName, String lastName, String pesel, String email, String password) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.pesel = pesel;
        this.email = email;
        this.password = password;
    }
}