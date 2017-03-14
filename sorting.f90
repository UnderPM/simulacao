subroutine Sorting(iArray,oArray)
    implicit none
    integer, dimension(20), intent(in) :: iArray
    integer, dimension(20) :: iArrayCopy
    integer, dimension(20), intent(out) :: oArray
    integer :: temp
    integer :: aindex = 0
    integer :: index2 = 0

    !initialize iArrayCopy
    do aindex = 1,20
        iArrayCopy(aindex) = iArray(aindex)
    end do

    !initialize oArray
    do aindex = 1,20
        oArray(aindex) = -999
    end do

    do aindex = 1,20
        do index2 = aindex + 1, 20
            if(iArrayCopy(aindex) > iArrayCopy(index2)) then
                temp = iArrayCopy(aindex)
                iArrayCopy(aindex) = iArrayCopy(index2)
                iArrayCopy(index2) = temp
            end if
        end do
    end do

    do aindex = 1,20
        oArray(aindex) = iArrayCopy(aindex)
    end do

end subroutine

