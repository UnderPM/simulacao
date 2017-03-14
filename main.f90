program main
    implicit none
    !character*10 :: name
    real, dimension(20) :: tempArray
    integer, dimension(20) :: oddArray
    integer, dimension(20) :: evenArray
    integer, dimension(20) :: xArray
    real, dimension(20) :: rArray
    integer::evenCounter = 0
    integer::oddCounter = 0
    integer::realCounter = 0
    integer::n = 0

    !read(*,*) name
    call ReadFromFile("dados.dat",tempArray)
    call OddEven(tempArray,oddArray,evenArray,oddCounter,evenCounter,rArray,realCounter)
    call Sorting(oddArray,int(oddArray))
    call Sorting(evenArray,int(evenArray))
    call Sorting(rArray,rArray)
    call x(xArray,oddArray,evenArray,oddCounter,evenCounter,n)
    call SaveToFile("resultados.dat",xArray,evenCounter,oddCounter,n)
    call printer(oddArray,evenArray,xArray,evenCounter,oddCounter,n)
    print*, system("pause")
end program



