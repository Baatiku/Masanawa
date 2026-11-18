.class public Lteam/opay/business/guideview/Configuration$a;
.super Ljava/lang/Object;
.source "Configuration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/business/guideview/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lteam/opay/business/guideview/Configuration;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lteam/opay/business/guideview/Configuration;
    .locals 4

    .line 1
    new-instance v0, Lteam/opay/business/guideview/Configuration;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/business/guideview/Configuration;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iput v1, v0, Lteam/opay/business/guideview/Configuration;->mAlpha:I

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iput v1, v0, Lteam/opay/business/guideview/Configuration;->mFullingViewId:I

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iput v1, v0, Lteam/opay/business/guideview/Configuration;->mTargetViewId:I

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iput v1, v0, Lteam/opay/business/guideview/Configuration;->mFullingColorId:I

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iput v1, v0, Lteam/opay/business/guideview/Configuration;->mCorner:I

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    iput v1, v0, Lteam/opay/business/guideview/Configuration;->mPadding:I

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    iput v1, v0, Lteam/opay/business/guideview/Configuration;->mPaddingLeft:I

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    iput v1, v0, Lteam/opay/business/guideview/Configuration;->mPaddingTop:I

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    iput v1, v0, Lteam/opay/business/guideview/Configuration;->mPaddingRight:I

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    iput v1, v0, Lteam/opay/business/guideview/Configuration;->mPaddingBottom:I

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    iput v1, v0, Lteam/opay/business/guideview/Configuration;->mGraphStyle:I

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    const/4 v2, 0x0

    .line 77
    const/4 v3, 0x1

    .line 78
    if-ne v1, v3, :cond_0

    .line 79
    .line 80
    const/4 v1, 0x1

    .line 81
    goto :goto_0

    .line 82
    :cond_0
    const/4 v1, 0x0

    .line 83
    :goto_0
    iput-boolean v1, v0, Lteam/opay/business/guideview/Configuration;->mAutoDismiss:Z

    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-ne p1, v3, :cond_1

    .line 90
    .line 91
    const/4 v2, 0x1

    .line 92
    :cond_1
    iput-boolean v2, v0, Lteam/opay/business/guideview/Configuration;->mOverlayTarget:Z

    .line 93
    .line 94
    return-object v0
.end method

.method public b(I)[Lteam/opay/business/guideview/Configuration;
    .locals 0

    .line 1
    new-array p1, p1, [Lteam/opay/business/guideview/Configuration;

    .line 2
    .line 3
    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/business/guideview/Configuration$a;->a(Landroid/os/Parcel;)Lteam/opay/business/guideview/Configuration;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/business/guideview/Configuration$a;->b(I)[Lteam/opay/business/guideview/Configuration;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
