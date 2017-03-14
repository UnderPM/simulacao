
subroutine ReadFromFile(filename,oArray)
    implicit none
    character*9, intent(in) :: filename
    real, dimension(20), intent(out) :: oArray
    integer :: index = 1

    !initialize array
    do index = 1,20
        oArray(index) = -999.0
    end do

    open(unit=10,file=filename)

    do index = 1,20
        read(10,*) oArray(index)
    end do
end subroutine
