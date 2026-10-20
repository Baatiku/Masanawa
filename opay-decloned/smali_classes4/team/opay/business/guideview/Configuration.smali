.class Lteam/opay/business/guideview/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lteam/opay/business/guideview/Configuration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAlpha:I

.field mAutoDismiss:Z

.field mCorner:I

.field mEnterAnimationId:I

.field mExitAnimationId:I

.field mFullingColorId:I

.field mFullingViewId:I

.field mGraphStyle:I

.field mOutsideTouchable:Z

.field mOverlayTarget:Z

.field mPadding:I

.field mPaddingBottom:I

.field mPaddingLeft:I

.field mPaddingRight:I

.field mPaddingTop:I

.field mShowCloseButton:Z

.field mTargetView:Landroid/view/View;

.field mTargetViewId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/business/guideview/Configuration$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/business/guideview/Configuration$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lteam/opay/business/guideview/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lteam/opay/business/guideview/Configuration;->mTargetView:Landroid/view/View;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lteam/opay/business/guideview/Configuration;->mPadding:I

    .line 9
    .line 10
    iput v0, p0, Lteam/opay/business/guideview/Configuration;->mPaddingLeft:I

    .line 11
    .line 12
    iput v0, p0, Lteam/opay/business/guideview/Configuration;->mPaddingTop:I

    .line 13
    .line 14
    iput v0, p0, Lteam/opay/business/guideview/Configuration;->mPaddingRight:I

    .line 15
    .line 16
    iput v0, p0, Lteam/opay/business/guideview/Configuration;->mPaddingBottom:I

    .line 17
    .line 18
    iput-boolean v0, p0, Lteam/opay/business/guideview/Configuration;->mOutsideTouchable:Z

    .line 19
    .line 20
    const/16 v1, 0xff

    .line 21
    .line 22
    iput v1, p0, Lteam/opay/business/guideview/Configuration;->mAlpha:I

    .line 23
    .line 24
    const/4 v1, -0x1

    .line 25
    iput v1, p0, Lteam/opay/business/guideview/Configuration;->mFullingViewId:I

    .line 26
    .line 27
    iput v1, p0, Lteam/opay/business/guideview/Configuration;->mTargetViewId:I

    .line 28
    .line 29
    iput v0, p0, Lteam/opay/business/guideview/Configuration;->mCorner:I

    .line 30
    .line 31
    iput v0, p0, Lteam/opay/business/guideview/Configuration;->mGraphStyle:I

    .line 32
    .line 33
    const v2, 0x106000c

    .line 34
    .line 35
    .line 36
    iput v2, p0, Lteam/opay/business/guideview/Configuration;->mFullingColorId:I

    .line 37
    .line 38
    const/4 v2, 0x1

    .line 39
    iput-boolean v2, p0, Lteam/opay/business/guideview/Configuration;->mAutoDismiss:Z

    .line 40
    .line 41
    iput-boolean v0, p0, Lteam/opay/business/guideview/Configuration;->mOverlayTarget:Z

    .line 42
    .line 43
    iput-boolean v0, p0, Lteam/opay/business/guideview/Configuration;->mShowCloseButton:Z

    .line 44
    .line 45
    iput v1, p0, Lteam/opay/business/guideview/Configuration;->mEnterAnimationId:I

    .line 46
    .line 47
    iput v1, p0, Lteam/opay/business/guideview/Configuration;->mExitAnimationId:I

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lteam/opay/business/guideview/Configuration;->mAlpha:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Lteam/opay/business/guideview/Configuration;->mFullingViewId:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Lteam/opay/business/guideview/Configuration;->mTargetViewId:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Lteam/opay/business/guideview/Configuration;->mFullingColorId:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget p2, p0, Lteam/opay/business/guideview/Configuration;->mCorner:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    iget p2, p0, Lteam/opay/business/guideview/Configuration;->mPadding:I

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    iget p2, p0, Lteam/opay/business/guideview/Configuration;->mPaddingLeft:I

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    .line 35
    .line 36
    iget p2, p0, Lteam/opay/business/guideview/Configuration;->mPaddingTop:I

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    .line 40
    .line 41
    iget p2, p0, Lteam/opay/business/guideview/Configuration;->mPaddingRight:I

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    .line 45
    .line 46
    iget p2, p0, Lteam/opay/business/guideview/Configuration;->mPaddingBottom:I

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    .line 50
    .line 51
    iget p2, p0, Lteam/opay/business/guideview/Configuration;->mGraphStyle:I

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    .line 55
    .line 56
    iget-boolean p2, p0, Lteam/opay/business/guideview/Configuration;->mAutoDismiss:Z

    .line 57
    .line 58
    int-to-byte p2, p2

    .line 59
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 60
    .line 61
    .line 62
    iget-boolean p2, p0, Lteam/opay/business/guideview/Configuration;->mOverlayTarget:Z

    .line 63
    .line 64
    int-to-byte p2, p2

    .line 65
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 66
    .line 67
    .line 68
    return-void
.end method
