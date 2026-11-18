.class public final Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "MyQRCodeViewModel.kt"

# interfaces
.implements Lteam/opay/core/api/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0019\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\r\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ3\u0010\u0013\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\u00110\u00100\u000f2\u0006\u0010\u000c\u001a\u00020\u000b2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0017\u0010\u0004\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R\u0017\u0010\u0005\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001cR\u001d\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u001d8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!R\u001d\u0010&\u001a\u0008\u0012\u0004\u0012\u00020#0\u001d8\u0006\u00a2\u0006\u000c\n\u0004\u0008$\u0010\u001f\u001a\u0004\u0008%\u0010!R\u001d\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\r0\u001d8\u0006\u00a2\u0006\u000c\n\u0004\u0008\'\u0010\u001f\u001a\u0004\u0008(\u0010!R\u0014\u0010-\u001a\u00020*8\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010,R\u0014\u00101\u001a\u00020.8\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008/\u00100R\u0016\u00105\u001a\u0004\u0018\u0001028\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u00083\u00104\u00a8\u00066"
    }
    d2 = {
        "Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "Lteam/opay/core/api/e;",
        "Lteam/opay/qrcode/myqrcode/MyQRCodeRepository;",
        "myQRCodeRepository",
        "sessionProvider",
        "<init>",
        "(Lteam/opay/qrcode/myqrcode/MyQRCodeRepository;Lteam/opay/core/api/e;)V",
        "",
        "s",
        "()V",
        "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "amount",
        "",
        "message",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/Resource;",
        "Lteam/opay/qrcode/bean/QRCodeResponse;",
        "Lteam/opay/qrcode/bean/MyQRCodeRsp;",
        "u",
        "(Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;)Landroidx/lifecycle/LiveData;",
        "a",
        "Lteam/opay/qrcode/myqrcode/MyQRCodeRepository;",
        "getMyQRCodeRepository",
        "()Lteam/opay/qrcode/myqrcode/MyQRCodeRepository;",
        "b",
        "Lteam/opay/core/api/e;",
        "getSessionProvider",
        "()Lteam/opay/core/api/e;",
        "Landroidx/lifecycle/MutableLiveData;",
        "c",
        "Landroidx/lifecycle/MutableLiveData;",
        "w",
        "()Landroidx/lifecycle/MutableLiveData;",
        "qrcode",
        "Lteam/opay/core/android/arch/Status;",
        "d",
        "r",
        "loadingStatus",
        "e",
        "x",
        "saveQrcodeResult",
        "Lteam/opay/core/api/Country;",
        "o",
        "()Lteam/opay/core/api/Country;",
        "country",
        "Lteam/opay/core/api/GraphQL$Currency;",
        "p",
        "()Lteam/opay/core/api/GraphQL$Currency;",
        "currency",
        "Lteam/opay/core/api/GraphQL$User;",
        "m",
        "()Lteam/opay/core/api/GraphQL$User;",
        "user",
        "qrcode_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lteam/opay/qrcode/myqrcode/MyQRCodeRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lteam/opay/core/api/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/qrcode/bean/MyQRCodeRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/core/android/arch/Status;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/qrcode/myqrcode/MyQRCodeRepository;Lteam/opay/core/api/e;)V
    .locals 1
    .param p1    # Lteam/opay/qrcode/myqrcode/MyQRCodeRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/api/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "myQRCodeRepository"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "sessionProvider"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;->a:Lteam/opay/qrcode/myqrcode/MyQRCodeRepository;

    .line 15
    .line 16
    iput-object p2, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;->b:Lteam/opay/core/api/e;

    .line 17
    .line 18
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 19
    .line 20
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    .line 24
    .line 25
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 26
    .line 27
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 33
    .line 34
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 38
    .line 39
    return-void
.end method

.method public static synthetic q(Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;Lkotlin/jvm/internal/Ref$ObjectRef;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;->t(Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;Lkotlin/jvm/internal/Ref$ObjectRef;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final t(Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;Lkotlin/jvm/internal/Ref$ObjectRef;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, v0

    .line 10
    :goto_0
    if-nez v1, :cond_1

    .line 11
    .line 12
    const/4 v1, -0x1

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    sget-object v2, Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel$a;->a:[I

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    aget v1, v2, v1

    .line 21
    .line 22
    :goto_1
    const/4 v2, 0x1

    .line 23
    if-eq v1, v2, :cond_8

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    if-eq v1, v2, :cond_3

    .line 27
    .line 28
    const/4 p1, 0x3

    .line 29
    if-eq v1, p1, :cond_2

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    iget-object p0, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 33
    .line 34
    sget-object p1, Lteam/opay/core/android/arch/Status;->LOADING:Lteam/opay/core/android/arch/Status;

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_3
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    check-cast p2, Lteam/opay/qrcode/bean/QRCodeResponse;

    .line 45
    .line 46
    if-nez p2, :cond_4

    .line 47
    .line 48
    iget-object p0, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 49
    .line 50
    sget-object p1, Lteam/opay/core/android/arch/Status;->ERROR:Lteam/opay/core/android/arch/Status;

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_4
    invoke-virtual {p2}, Lteam/opay/qrcode/bean/QRCodeResponse;->c()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_5

    .line 61
    .line 62
    iget-object p0, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 63
    .line 64
    sget-object p1, Lteam/opay/core/android/arch/Status;->ERROR:Lteam/opay/core/android/arch/Status;

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_5
    invoke-virtual {p2}, Lteam/opay/qrcode/bean/QRCodeResponse;->a()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    check-cast p2, Lteam/opay/qrcode/bean/MyQRCodeRsp;

    .line 75
    .line 76
    if-eqz p2, :cond_6

    .line 77
    .line 78
    invoke-virtual {p2}, Lteam/opay/qrcode/bean/MyQRCodeRsp;->b()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    if-nez p2, :cond_7

    .line 83
    .line 84
    :cond_6
    const-string p2, ""

    .line 85
    .line 86
    :cond_7
    iput-object p2, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 87
    .line 88
    sget-object v1, Lg9c;->a:Lg9c;

    .line 89
    .line 90
    invoke-virtual {v1, p2}, Lg9c;->g(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object p2, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    .line 94
    .line 95
    new-instance v1, Lteam/opay/qrcode/bean/MyQRCodeRsp;

    .line 96
    .line 97
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast p1, Ljava/lang/String;

    .line 100
    .line 101
    invoke-direct {v1, p1, v0, v2, v0}, Lteam/opay/qrcode/bean/MyQRCodeRsp;-><init>(Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    iget-object p0, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 108
    .line 109
    sget-object p1, Lteam/opay/core/android/arch/Status;->SUCCESS:Lteam/opay/core/android/arch/Status;

    .line 110
    .line 111
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_8
    iget-object p0, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 116
    .line 117
    sget-object p1, Lteam/opay/core/android/arch/Status;->ERROR:Lteam/opay/core/android/arch/Status;

    .line 118
    .line 119
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 123
    .line 124
    return-object p0
.end method

.method public static synthetic v(Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;ILjava/lang/Object;)Landroidx/lifecycle/LiveData;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;->u(Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method


# virtual methods
.method public m()Lteam/opay/core/api/GraphQL$User;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;->b:Lteam/opay/core/api/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lteam/opay/core/api/e;->m()Lteam/opay/core/api/GraphQL$User;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public o()Lteam/opay/core/api/Country;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;->b:Lteam/opay/core/api/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lteam/opay/core/api/e;->o()Lteam/opay/core/api/Country;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public p()Lteam/opay/core/api/GraphQL$Currency;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;->b:Lteam/opay/core/api/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lteam/opay/core/api/e;->p()Lteam/opay/core/api/GraphQL$Currency;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final r()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/core/android/arch/Status;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final s()V
    .locals 5

    .line 1
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lg9c;->a:Lg9c;

    .line 7
    .line 8
    invoke-virtual {v1}, Lg9c;->b()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Ljava/lang/CharSequence;

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    if-lez v1, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    .line 24
    .line 25
    new-instance v3, Lteam/opay/qrcode/bean/MyQRCodeRsp;

    .line 26
    .line 27
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Ljava/lang/String;

    .line 30
    .line 31
    const/4 v4, 0x2

    .line 32
    invoke-direct {v3, v0, v2, v4, v2}, Lteam/opay/qrcode/bean/MyQRCodeRsp;-><init>(Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v1, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;->a:Lteam/opay/qrcode/myqrcode/MyQRCodeRepository;

    .line 40
    .line 41
    new-instance v3, Lteam/opay/qrcode/bean/MyQRCodeReq;

    .line 42
    .line 43
    const/4 v4, 0x3

    .line 44
    invoke-direct {v3, v2, v2, v4, v2}, Lteam/opay/qrcode/bean/MyQRCodeReq;-><init>(Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v3}, Lteam/opay/qrcode/myqrcode/MyQRCodeRepository;->b(Lteam/opay/qrcode/bean/MyQRCodeReq;)Landroidx/lifecycle/LiveData;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    new-instance v2, Lli9;

    .line 52
    .line 53
    invoke-direct {v2, p0, v0}, Lli9;-><init>(Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v1, v2}, Lqna;->b(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void
.end method

.method public final u(Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/qrcode/bean/QRCodeResponse<",
            "Lteam/opay/qrcode/bean/MyQRCodeRsp;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "amount"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;->a:Lteam/opay/qrcode/myqrcode/MyQRCodeRepository;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/qrcode/bean/MyQRCodeReq;

    .line 9
    .line 10
    invoke-direct {v1, p1, p2}, Lteam/opay/qrcode/bean/MyQRCodeReq;-><init>(Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lteam/opay/qrcode/myqrcode/MyQRCodeRepository;->b(Lteam/opay/qrcode/bean/MyQRCodeReq;)Landroidx/lifecycle/LiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final w()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/qrcode/bean/MyQRCodeRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final x()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method
