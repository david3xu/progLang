      PROGRAM MAIN
        INTEGER X

        X = 5
        PRINT *, SQUARE(X)  ! This should print 25
        PRINT *, X          ! This should print 25 if SQUARE modifies X

        END

        REAL FUNCTION SQUARE(X)
        INTEGER X
        X = X * X
        SQUARE = X
        END FUNCTION SQUARE