.class public final Lteam/opay/pay/kyc/ModifyUserInfoViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "ModifyUserInfoViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B+\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u00e3\u0001\u0010#\u001a\u00020!2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000e2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00142\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00142\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00142\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u000e2\u001c\u0010\"\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00010 \u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0012\u0004\u0012\u00020!0\u001f\u00a2\u0006\u0004\u0008#\u0010$R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\u0016\u0010\t\u001a\u0004\u0018\u00010\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u0017\u0010\u0010\u001a\u00020-8\u0006\u00a2\u0006\u000c\n\u0004\u0008.\u0010/\u001a\u0004\u00080\u00101R\u0017\u0010\u0011\u001a\u00020-8\u0006\u00a2\u0006\u000c\n\u0004\u00082\u0010/\u001a\u0004\u00083\u00101R\u0017\u0010\u0012\u001a\u00020-8\u0006\u00a2\u0006\u000c\n\u0004\u00084\u0010/\u001a\u0004\u00085\u00101R\u0017\u0010\u001b\u001a\u00020-8\u0006\u00a2\u0006\u000c\n\u0004\u00086\u0010/\u001a\u0004\u00087\u00101R$\u0010?\u001a\u0004\u0018\u0001088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00089\u0010:\u001a\u0004\u0008;\u0010<\"\u0004\u0008=\u0010>R$\u0010C\u001a\u0004\u0018\u0001088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008@\u0010:\u001a\u0004\u0008A\u0010<\"\u0004\u0008B\u0010>R$\u0010G\u001a\u0004\u0018\u0001088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008D\u0010:\u001a\u0004\u0008E\u0010<\"\u0004\u0008F\u0010>R#\u0010N\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002080I0H8\u0006\u00a2\u0006\u000c\n\u0004\u0008J\u0010K\u001a\u0004\u0008L\u0010MR#\u0010Q\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002080I0H8\u0006\u00a2\u0006\u000c\n\u0004\u0008O\u0010K\u001a\u0004\u0008P\u0010MR#\u0010T\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002080I0H8\u0006\u00a2\u0006\u000c\n\u0004\u0008R\u0010K\u001a\u0004\u0008S\u0010MR#\u0010W\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002080I0H8\u0006\u00a2\u0006\u000c\n\u0004\u0008U\u0010K\u001a\u0004\u0008V\u0010MR\u001d\u0010^\u001a\u0008\u0012\u0004\u0012\u00020Y0X8\u0006\u00a2\u0006\u000c\n\u0004\u0008Z\u0010[\u001a\u0004\u0008\\\u0010]\u00a8\u0006_"
    }
    d2 = {
        "Lteam/opay/pay/kyc/ModifyUserInfoViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Landroid/app/Application;",
        "app",
        "Lteam/opay/core/account/AccountRepository;",
        "accountRepository",
        "Lteam/opay/core/android/arch/AppExecutors;",
        "appExecutors",
        "Lteam/opay/pay/address/AddressDao;",
        "addressDao",
        "<init>",
        "(Landroid/app/Application;Lteam/opay/core/account/AccountRepository;Lteam/opay/core/android/arch/AppExecutors;Lteam/opay/pay/address/AddressDao;)V",
        "Lag8;",
        "lifecycleOwner",
        "",
        "operateType",
        "firstName",
        "middleName",
        "surname",
        "state",
        "",
        "stateCode",
        "lga",
        "lgaCode",
        "city",
        "cityCode",
        "landmark",
        "address",
        "dob",
        "gender",
        "nickName",
        "Lkotlin/Function2;",
        "",
        "",
        "callback",
        "D",
        "(Lag8;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V",
        "b",
        "Landroid/app/Application;",
        "c",
        "Lteam/opay/core/account/AccountRepository;",
        "d",
        "Lteam/opay/core/android/arch/AppExecutors;",
        "e",
        "Lteam/opay/pay/address/AddressDao;",
        "Lteam/opay/pay/android/validation/FieldValidation;",
        "f",
        "Lteam/opay/pay/android/validation/FieldValidation;",
        "x",
        "()Lteam/opay/pay/android/validation/FieldValidation;",
        "g",
        "z",
        "h",
        "C",
        "i",
        "v",
        "Lteam/opay/pay/address/Address;",
        "j",
        "Lteam/opay/pay/address/Address;",
        "B",
        "()Lteam/opay/pay/address/Address;",
        "L",
        "(Lteam/opay/pay/address/Address;)V",
        "stateData",
        "k",
        "y",
        "K",
        "lgaData",
        "l",
        "w",
        "J",
        "cityData",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "m",
        "Landroidx/lifecycle/MutableLiveData;",
        "getStateList",
        "()Landroidx/lifecycle/MutableLiveData;",
        "stateList",
        "n",
        "getLgaList",
        "lgaList",
        "o",
        "getAreaList",
        "areaList",
        "p",
        "getAddressNewList",
        "addressNewList",
        "Landroidx/lifecycle/MediatorLiveData;",
        "",
        "q",
        "Landroidx/lifecycle/MediatorLiveData;",
        "A",
        "()Landroidx/lifecycle/MediatorLiveData;",
        "nameChangeEvent",
        "sdk_release"
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
.field public final b:Landroid/app/Application;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lteam/opay/core/account/AccountRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lteam/opay/core/android/arch/AppExecutors;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lteam/opay/pay/address/AddressDao;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final f:Lteam/opay/pay/android/validation/FieldValidation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lteam/opay/pay/android/validation/FieldValidation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lteam/opay/pay/android/validation/FieldValidation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lteam/opay/pay/android/validation/FieldValidation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Lteam/opay/pay/address/Address;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public k:Lteam/opay/pay/address/Address;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public l:Lteam/opay/pay/address/Address;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final m:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lteam/opay/pay/address/Address;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final n:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lteam/opay/pay/address/Address;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final o:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lteam/opay/pay/address/Address;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final p:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lteam/opay/pay/address/Address;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final q:Landroidx/lifecycle/MediatorLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MediatorLiveData<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;Lteam/opay/core/account/AccountRepository;Lteam/opay/core/android/arch/AppExecutors;Lteam/opay/pay/address/AddressDao;)V
    .locals 20
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/account/AccountRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/core/android/arch/AppExecutors;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lteam/opay/pay/address/AddressDao;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    const-string v4, "app"

    .line 10
    .line 11
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v4, "accountRepository"

    .line 15
    .line 16
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v4, "appExecutors"

    .line 20
    .line 21
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-direct/range {p0 .. p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 25
    .line 26
    .line 27
    iput-object v1, v0, Lteam/opay/pay/kyc/ModifyUserInfoViewModel;->b:Landroid/app/Application;

    .line 28
    .line 29
    iput-object v2, v0, Lteam/opay/pay/kyc/ModifyUserInfoViewModel;->c:Lteam/opay/core/account/AccountRepository;

    .line 30
    .line 31
    iput-object v3, v0, Lteam/opay/pay/kyc/ModifyUserInfoViewModel;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 32
    .line 33
    move-object/from16 v1, p4

    .line 34
    .line 35
    iput-object v1, v0, Lteam/opay/pay/kyc/ModifyUserInfoViewModel;->e:Lteam/opay/pay/address/AddressDao;

    .line 36
    .line 37
    new-instance v7, Lteam/opay/pay/android/validation/FieldValidation;

    .line 38
    .line 39
    invoke-static {}, Lm7e;->Z()Lkotlin/jvm/functions/Function1;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const/4 v5, 0x4

    .line 44
    const/4 v6, 0x0

    .line 45
    const/4 v2, 0x1

    .line 46
    const/4 v4, 0x0

    .line 47
    move-object v1, v7

    .line 48
    invoke-direct/range {v1 .. v6}, Lteam/opay/pay/android/validation/FieldValidation;-><init>(ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 49
    .line 50
    .line 51
    iput-object v7, v0, Lteam/opay/pay/kyc/ModifyUserInfoViewModel;->f:Lteam/opay/pay/android/validation/FieldValidation;

    .line 52
    .line 53
    new-instance v1, Lteam/opay/pay/android/validation/FieldValidation;

    .line 54
    .line 55
    invoke-static {}, Lm7e;->Z()Lkotlin/jvm/functions/Function1;

    .line 56
    .line 57
    .line 58
    move-result-object v10

    .line 59
    const/4 v12, 0x4

    .line 60
    const/4 v13, 0x0

    .line 61
    const/4 v9, 0x0

    .line 62
    const/4 v11, 0x0

    .line 63
    move-object v8, v1

    .line 64
    invoke-direct/range {v8 .. v13}, Lteam/opay/pay/android/validation/FieldValidation;-><init>(ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 65
    .line 66
    .line 67
    iput-object v1, v0, Lteam/opay/pay/kyc/ModifyUserInfoViewModel;->g:Lteam/opay/pay/android/validation/FieldValidation;

    .line 68
    .line 69
    new-instance v2, Lteam/opay/pay/android/validation/FieldValidation;

    .line 70
    .line 71
    invoke-static {}, Lm7e;->Z()Lkotlin/jvm/functions/Function1;

    .line 72
    .line 73
    .line 74
    move-result-object v16

    .line 75
    const/16 v18, 0x4

    .line 76
    .line 77
    const/16 v19, 0x0

    .line 78
    .line 79
    const/4 v15, 0x1

    .line 80
    const/16 v17, 0x0

    .line 81
    .line 82
    move-object v14, v2

    .line 83
    invoke-direct/range {v14 .. v19}, Lteam/opay/pay/android/validation/FieldValidation;-><init>(ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 84
    .line 85
    .line 86
    iput-object v2, v0, Lteam/opay/pay/kyc/ModifyUserInfoViewModel;->h:Lteam/opay/pay/android/validation/FieldValidation;

    .line 87
    .line 88
    new-instance v3, Lteam/opay/pay/android/validation/FieldValidation;

    .line 89
    .line 90
    invoke-static {}, Lm7e;->T()Lkotlin/jvm/functions/Function1;

    .line 91
    .line 92
    .line 93
    move-result-object v10

    .line 94
    const/4 v9, 0x1

    .line 95
    move-object v8, v3

    .line 96
    invoke-direct/range {v8 .. v13}, Lteam/opay/pay/android/validation/FieldValidation;-><init>(ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 97
    .line 98
    .line 99
    iput-object v3, v0, Lteam/opay/pay/kyc/ModifyUserInfoViewModel;->i:Lteam/opay/pay/android/validation/FieldValidation;

    .line 100
    .line 101
    new-instance v3, Landroidx/lifecycle/MutableLiveData;

    .line 102
    .line 103
    invoke-direct {v3}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 104
    .line 105
    .line 106
    iput-object v3, v0, Lteam/opay/pay/kyc/ModifyUserInfoViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    .line 107
    .line 108
    new-instance v3, Landroidx/lifecycle/MutableLiveData;

    .line 109
    .line 110
    invoke-direct {v3}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 111
    .line 112
    .line 113
    iput-object v3, v0, Lteam/opay/pay/kyc/ModifyUserInfoViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    .line 114
    .line 115
    new-instance v3, Landroidx/lifecycle/MutableLiveData;

    .line 116
    .line 117
    invoke-direct {v3}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 118
    .line 119
    .line 120
    iput-object v3, v0, Lteam/opay/pay/kyc/ModifyUserInfoViewModel;->o:Landroidx/lifecycle/MutableLiveData;

    .line 121
    .line 122
    new-instance v3, Landroidx/lifecycle/MutableLiveData;

    .line 123
    .line 124
    invoke-direct {v3}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 125
    .line 126
    .line 127
    iput-object v3, v0, Lteam/opay/pay/kyc/ModifyUserInfoViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    .line 128
    .line 129
    new-instance v3, Landroidx/lifecycle/MediatorLiveData;

    .line 130
    .line 131
    invoke-direct {v3}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v7}, Lteam/opay/pay/android/validation/FieldValidation;->e()Landroidx/lifecycle/LiveData;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    new-instance v5, Lgc9;

    .line 139
    .line 140
    invoke-direct {v5, v3}, Lgc9;-><init>(Landroidx/lifecycle/MediatorLiveData;)V

    .line 141
    .line 142
    .line 143
    new-instance v6, Lteam/opay/pay/kyc/ModifyUserInfoViewModel$a;

    .line 144
    .line 145
    invoke-direct {v6, v5}, Lteam/opay/pay/kyc/ModifyUserInfoViewModel$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3, v4, v6}, Landroidx/lifecycle/MediatorLiveData;->b(Landroidx/lifecycle/LiveData;Lvfa;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1}, Lteam/opay/pay/android/validation/FieldValidation;->e()Landroidx/lifecycle/LiveData;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    new-instance v4, Lhc9;

    .line 156
    .line 157
    invoke-direct {v4, v3}, Lhc9;-><init>(Landroidx/lifecycle/MediatorLiveData;)V

    .line 158
    .line 159
    .line 160
    new-instance v5, Lteam/opay/pay/kyc/ModifyUserInfoViewModel$a;

    .line 161
    .line 162
    invoke-direct {v5, v4}, Lteam/opay/pay/kyc/ModifyUserInfoViewModel$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3, v1, v5}, Landroidx/lifecycle/MediatorLiveData;->b(Landroidx/lifecycle/LiveData;Lvfa;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2}, Lteam/opay/pay/android/validation/FieldValidation;->e()Landroidx/lifecycle/LiveData;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    new-instance v2, Lic9;

    .line 173
    .line 174
    invoke-direct {v2, v3}, Lic9;-><init>(Landroidx/lifecycle/MediatorLiveData;)V

    .line 175
    .line 176
    .line 177
    new-instance v4, Lteam/opay/pay/kyc/ModifyUserInfoViewModel$a;

    .line 178
    .line 179
    invoke-direct {v4, v2}, Lteam/opay/pay/kyc/ModifyUserInfoViewModel$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3, v1, v4}, Landroidx/lifecycle/MediatorLiveData;->b(Landroidx/lifecycle/LiveData;Lvfa;)V

    .line 183
    .line 184
    .line 185
    iput-object v3, v0, Lteam/opay/pay/kyc/ModifyUserInfoViewModel;->q:Landroidx/lifecycle/MediatorLiveData;

    .line 186
    .line 187
    return-void
.end method

.method public static synthetic E(Lteam/opay/pay/kyc/ModifyUserInfoViewModel;Lag8;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 21

    move/from16 v0, p18

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object/from16 v6, p3

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    move-object v7, v2

    goto :goto_1

    :cond_1
    move-object/from16 v7, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    move-object v8, v2

    goto :goto_2

    :cond_2
    move-object/from16 v8, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    move-object v9, v2

    goto :goto_3

    :cond_3
    move-object/from16 v9, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    move-object v10, v2

    goto :goto_4

    :cond_4
    move-object/from16 v10, p7

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    move-object v11, v2

    goto :goto_5

    :cond_5
    move-object/from16 v11, p8

    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    move-object v12, v2

    goto :goto_6

    :cond_6
    move-object/from16 v12, p9

    :goto_6
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_7

    move-object v13, v2

    goto :goto_7

    :cond_7
    move-object/from16 v13, p10

    :goto_7
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_8

    move-object v14, v2

    goto :goto_8

    :cond_8
    move-object/from16 v14, p11

    :goto_8
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_9

    move-object v15, v2

    goto :goto_9

    :cond_9
    move-object/from16 v15, p12

    :goto_9
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_a

    move-object/from16 v16, v2

    goto :goto_a

    :cond_a
    move-object/from16 v16, p13

    :goto_a
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_b

    move-object/from16 v17, v2

    goto :goto_b

    :cond_b
    move-object/from16 v17, p14

    :goto_b
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_c

    move-object/from16 v18, v2

    goto :goto_c

    :cond_c
    move-object/from16 v18, p15

    :goto_c
    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    move-object/from16 v19, v2

    goto :goto_d

    :cond_d
    move-object/from16 v19, p16

    :goto_d
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v20, p17

    .line 1
    invoke-virtual/range {v3 .. v20}, Lteam/opay/pay/kyc/ModifyUserInfoViewModel;->D(Lag8;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static final F(Lkotlin/jvm/functions/Function2;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

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
    sget-object v2, Lteam/opay/core/android/arch/Status;->SUCCESS:Lteam/opay/core/android/arch/Status;

    .line 11
    .line 12
    if-ne v1, v2, :cond_1

    .line 13
    .line 14
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p0, v0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    if-eqz p1, :cond_2

    .line 25
    .line 26
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_2
    sget-object v1, Lteam/opay/core/android/arch/Status;->ERROR:Lteam/opay/core/android/arch/Status;

    .line 31
    .line 32
    if-ne v0, v1, :cond_3

    .line 33
    .line 34
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 35
    .line 36
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-interface {p0, v0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 44
    .line 45
    return-object p0
.end method

.method public static final G(Landroidx/lifecycle/MediatorLiveData;Lteam/opay/pay/android/validation/ValidationInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    return-object p0
.end method

.method public static final H(Landroidx/lifecycle/MediatorLiveData;Lteam/opay/pay/android/validation/ValidationInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    return-object p0
.end method

.method public static final I(Landroidx/lifecycle/MediatorLiveData;Lteam/opay/pay/android/validation/ValidationInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    return-object p0
.end method

.method public static synthetic r(Landroidx/lifecycle/MediatorLiveData;Lteam/opay/pay/android/validation/ValidationInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/ModifyUserInfoViewModel;->I(Landroidx/lifecycle/MediatorLiveData;Lteam/opay/pay/android/validation/ValidationInfo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic s(Lkotlin/jvm/functions/Function2;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/ModifyUserInfoViewModel;->F(Lkotlin/jvm/functions/Function2;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic t(Landroidx/lifecycle/MediatorLiveData;Lteam/opay/pay/android/validation/ValidationInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/ModifyUserInfoViewModel;->G(Landroidx/lifecycle/MediatorLiveData;Lteam/opay/pay/android/validation/ValidationInfo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic u(Landroidx/lifecycle/MediatorLiveData;Lteam/opay/pay/android/validation/ValidationInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/ModifyUserInfoViewModel;->H(Landroidx/lifecycle/MediatorLiveData;Lteam/opay/pay/android/validation/ValidationInfo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final A()Landroidx/lifecycle/MediatorLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MediatorLiveData<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/ModifyUserInfoViewModel;->q:Landroidx/lifecycle/MediatorLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final B()Lteam/opay/pay/address/Address;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/ModifyUserInfoViewModel;->j:Lteam/opay/pay/address/Address;

    .line 2
    .line 3
    return-object v0
.end method

.method public final C()Lteam/opay/pay/android/validation/FieldValidation;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/ModifyUserInfoViewModel;->h:Lteam/opay/pay/android/validation/FieldValidation;

    .line 2
    .line 3
    return-object v0
.end method

.method public final D(Lag8;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 24
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lag8;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p17

    .line 4
    .line 5
    move-object/from16 v5, p2

    .line 6
    .line 7
    move-object/from16 v6, p3

    .line 8
    .line 9
    move-object/from16 v7, p4

    .line 10
    .line 11
    move-object/from16 v8, p5

    .line 12
    .line 13
    move-object/from16 v9, p6

    .line 14
    .line 15
    move-object/from16 v10, p7

    .line 16
    .line 17
    move-object/from16 v11, p8

    .line 18
    .line 19
    move-object/from16 v12, p9

    .line 20
    .line 21
    move-object/from16 v13, p10

    .line 22
    .line 23
    move-object/from16 v14, p11

    .line 24
    .line 25
    move-object/from16 v15, p12

    .line 26
    .line 27
    move-object/from16 v16, p13

    .line 28
    .line 29
    move-object/from16 v17, p14

    .line 30
    .line 31
    move-object/from16 v18, p15

    .line 32
    .line 33
    move-object/from16 v19, p16

    .line 34
    .line 35
    const-string v2, "lifecycleOwner"

    .line 36
    .line 37
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v2, "operateType"

    .line 41
    .line 42
    move-object/from16 v3, p2

    .line 43
    .line 44
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v2, "callback"

    .line 48
    .line 49
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    move-object/from16 v4, p0

    .line 53
    .line 54
    iget-object v3, v4, Lteam/opay/pay/kyc/ModifyUserInfoViewModel;->c:Lteam/opay/core/account/AccountRepository;

    .line 55
    .line 56
    new-instance v2, Lteam/opay/core/api/graphql/ModifyUserInfoBody;

    .line 57
    .line 58
    move-object/from16 p2, v2

    .line 59
    .line 60
    sget-object v20, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 61
    .line 62
    invoke-virtual/range {v20 .. v20}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 63
    .line 64
    .line 65
    move-result-object v20

    .line 66
    invoke-virtual/range {v20 .. v20}, Lteam/opay/core/account/AccountInfoManager;->u()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v20

    .line 70
    move-object/from16 v22, v3

    .line 71
    .line 72
    move-object/from16 v3, v20

    .line 73
    .line 74
    const/16 v20, 0x2

    .line 75
    .line 76
    const/16 v21, 0x0

    .line 77
    .line 78
    const/16 v23, 0x0

    .line 79
    .line 80
    move-object/from16 v4, v23

    .line 81
    .line 82
    invoke-direct/range {v2 .. v21}, Lteam/opay/core/api/graphql/ModifyUserInfoBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 83
    .line 84
    .line 85
    move-object/from16 v3, p2

    .line 86
    .line 87
    move-object/from16 v2, v22

    .line 88
    .line 89
    invoke-virtual {v2, v3}, Lteam/opay/core/account/AccountRepository;->r(Lteam/opay/core/api/graphql/ModifyUserInfoBody;)Landroidx/lifecycle/LiveData;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    new-instance v3, Ljc9;

    .line 94
    .line 95
    invoke-direct {v3, v1}, Ljc9;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 96
    .line 97
    .line 98
    invoke-static {v2, v0, v3}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public final J(Lteam/opay/pay/address/Address;)V
    .locals 0
    .param p1    # Lteam/opay/pay/address/Address;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/ModifyUserInfoViewModel;->l:Lteam/opay/pay/address/Address;

    .line 2
    .line 3
    return-void
.end method

.method public final K(Lteam/opay/pay/address/Address;)V
    .locals 0
    .param p1    # Lteam/opay/pay/address/Address;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/ModifyUserInfoViewModel;->k:Lteam/opay/pay/address/Address;

    .line 2
    .line 3
    return-void
.end method

.method public final L(Lteam/opay/pay/address/Address;)V
    .locals 0
    .param p1    # Lteam/opay/pay/address/Address;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/ModifyUserInfoViewModel;->j:Lteam/opay/pay/address/Address;

    .line 2
    .line 3
    return-void
.end method

.method public final v()Lteam/opay/pay/android/validation/FieldValidation;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/ModifyUserInfoViewModel;->i:Lteam/opay/pay/android/validation/FieldValidation;

    .line 2
    .line 3
    return-object v0
.end method

.method public final w()Lteam/opay/pay/address/Address;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/ModifyUserInfoViewModel;->l:Lteam/opay/pay/address/Address;

    .line 2
    .line 3
    return-object v0
.end method

.method public final x()Lteam/opay/pay/android/validation/FieldValidation;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/ModifyUserInfoViewModel;->f:Lteam/opay/pay/android/validation/FieldValidation;

    .line 2
    .line 3
    return-object v0
.end method

.method public final y()Lteam/opay/pay/address/Address;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/ModifyUserInfoViewModel;->k:Lteam/opay/pay/address/Address;

    .line 2
    .line 3
    return-object v0
.end method

.method public final z()Lteam/opay/pay/android/validation/FieldValidation;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/ModifyUserInfoViewModel;->g:Lteam/opay/pay/android/validation/FieldValidation;

    .line 2
    .line 3
    return-object v0
.end method
