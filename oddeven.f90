subroutine OddEven(iArray,OddArray,EvenArray,oddCounter,evenCounter,rArray,realCounter)
    implicit none
    real, dimension(20), intent(in) :: iArray
    real, dimension(20), intent(out) :: rArray
    integer, dimension(20) :: iArrayInt
    integer, dimension(20), intent(out) :: OddArray
    integer, dimension(20), intent(out) :: EvenArray
    integer :: index = 1
    integer :: oIndex = 1
    integer :: eIndex = 1
    integer :: rIndex = 1
    integer, intent(out) :: oddCounter
    integer, intent(out) :: evenCounter
    integer, intent(out) :: realCounter

    !initialize arrays
    do index = 1,20
        OddArray(index) = -999
        EvenArray(index) = -999
        iArrayInt(index) = int(iArray(index))
        rArray(index) = -999
    end do

    do index = 1,20
        if(mod(iArray(index),2.0) == 0) then
            EvenArray(eIndex) = iArrayInt(index)
            eIndex = eIndex + 1
        end if
        if(mod(iArrayInt(index),2) > 0) then
            !OddArray(oIndex) = iArrayInt(index)
            !oIndex = oIndex + 1
        end if
        if(mod(iArray(index),2.0) < 0 .OR. mod(iArray(index),2.0) > 0) then
            if((mod(iArray(index),2.0) > -1 .OR. mod(iArray(index),2.0) < 1 )) then
                rArray(rIndex) = iArray(index)
                rIndex = rIndex + 1
                goto 103
            end if
            OddArray(oIndex) = iArrayInt(index)
            oIndex = oIndex + 1
            103 continue
        end if
    end do

    oddCounter = oIndex - 1
    evenCounter = eIndex - 1
    realCounter = rIndex - 1
end subroutine
