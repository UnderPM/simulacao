program main
    implicit none
    integer, dimension(20)::fArray
    character*10, dimension(20)::cfArray

    integer, dimension(20)::eArray
    integer, dimension(20)::oArray
    integer::evenCounter = 0
    integer::oddCounter = 0
    integer::realCounter = 0

    integer, dimension(20)::eSortedArray
    integer, dimension(20)::oSortedArray

    real, dimension(20)::xArray
    integer::n = 0
    integer::nReal = 0

    call ReadFromFile("numeros.dat",cfArray)

    call checkForReal(cfArray,fArray,nReal)

    do n = 1,20,1
        xArray(n) = -999.0
    end do

    call OddEven(fArray,eArray,evenCounter,oArray,oddCounter,realCounter)

    call Sorting(eArray,eSortedArray)
    call Sorting(oArray,oSortedArray)

    call x(xArray,oSortedArray,eSortedArray,oddCounter,evenCounter,n,oArray,eArray)

    call SaveToFile("resultados.dat",xArray,n,eArray,oArray)

    call printer(evenCounter,oddCounter,nReal)

    print*, "Pressione Enter para sair"
    read(*,*)
end program



