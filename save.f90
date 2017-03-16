subroutine SaveToFile(filename,xArray,n,eArray,oArray)
    implicit none
    character*14, intent(in) :: filename
    integer, intent(in)::n
    integer, dimension(20), intent(in)::eArray
    integer, dimension(20), intent(in)::oArray
    real, dimension(20), intent(in)::xArray
    integer :: index = 0

    open(unit=10,file=filename)

    write(10,*) "X:                   Pares:            Impares:"

    do index = 1,n,1
        write(10,*) xArray(index), "   ", eArray(index), "   ", oArray(index)
    end do
end subroutine
