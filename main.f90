program main
    implicit none
    real, dimension(20)::fArray

    integer, dimension(20)::eArray
    integer, dimension(20)::oArray
    integer::evenCounter = 0
    integer::oddCounter = 0
    integer::realCounter = 0

    integer, dimension(20)::xArray
    integer::n = 0

    call ReadFromFile("numeros.dat",fArray)

    do n = 1,20,1
        print*, fArray(n)
    end do

    call OddEven(fArray,eArray,evenCounter,oArray,oddCounter,realCounter)

    call Sorting(eArray,eArray)
    call Sorting(oArray,oArray)

    call x(xArray,oArray,eArray,oddCounter,evenCounter,n)

    !call SaveToFile("resultados.dat",xArray,evenCounter,oddCounter,n)

    print*, system("pause")
end program



