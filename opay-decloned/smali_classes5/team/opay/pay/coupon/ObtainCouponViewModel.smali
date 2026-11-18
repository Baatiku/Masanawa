.class public final Lteam/opay/pay/coupon/ObtainCouponViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "ObtainCouponViewModel.kt"

# interfaces
.implements Lteam/opay/core/api/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/coupon/ObtainCouponViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B!\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001d\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J#\u0010\u0016\u001a\u00020\u000e2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0015\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u001d\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0017\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eR\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R$\u0010(\u001a\u0004\u0018\u00010!8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\u001d\u0010/\u001a\u0008\u0012\u0004\u0012\u00020*0)8\u0006\u00a2\u0006\u000c\n\u0004\u0008+\u0010,\u001a\u0004\u0008-\u0010.R\u001f\u00102\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010!0)8\u0006\u00a2\u0006\u000c\n\u0004\u00080\u0010,\u001a\u0004\u00081\u0010.R#\u00105\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\u00110)8\u0006\u00a2\u0006\u000c\n\u0004\u00083\u0010,\u001a\u0004\u00084\u0010.R\u001f\u00108\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0)8\u0006\u00a2\u0006\u000c\n\u0004\u00086\u0010,\u001a\u0004\u00087\u0010.R\u0014\u0010<\u001a\u0002098\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008:\u0010;R\u0018\u0010@\u001a\u0004\u0018\u00010=8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008>\u0010?R\u0014\u0010D\u001a\u00020A8\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008B\u0010CR\u0014\u0010G\u001a\u00020E8\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010FR\u0016\u0010K\u001a\u0004\u0018\u00010H8\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008I\u0010J\u00a8\u0006L"
    }
    d2 = {
        "Lteam/opay/pay/coupon/ObtainCouponViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Lteam/opay/core/api/e;",
        "Landroid/app/Application;",
        "app",
        "Lteam/opay/pay/coupon/ObtainCouponRepository;",
        "obtainCouponRepository",
        "sessionProvider",
        "<init>",
        "(Landroid/app/Application;Lteam/opay/pay/coupon/ObtainCouponRepository;Lteam/opay/core/api/e;)V",
        "Lteam/opay/pay/coupon/GetValidVouchersRequest;",
        "request",
        "Lag8;",
        "lifecycleOwner",
        "",
        "y",
        "(Lteam/opay/pay/coupon/GetValidVouchersRequest;Lag8;)V",
        "Ljava/util/ArrayList;",
        "Lteam/opay/pay/coupon/ChooseCouponItem;",
        "p",
        "",
        "width",
        "B",
        "(Ljava/util/ArrayList;I)V",
        "Landroid/content/res/Resources;",
        "res",
        "texSize",
        "A",
        "(Landroid/content/res/Resources;I)V",
        "t",
        "(Lteam/opay/pay/coupon/ChooseCouponItem;)V",
        "c",
        "Lteam/opay/pay/coupon/ObtainCouponRepository;",
        "",
        "d",
        "Ljava/lang/String;",
        "getBusinessType",
        "()Ljava/lang/String;",
        "setBusinessType",
        "(Ljava/lang/String;)V",
        "businessType",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "e",
        "Landroidx/lifecycle/MutableLiveData;",
        "w",
        "()Landroidx/lifecycle/MutableLiveData;",
        "loadingEvent",
        "f",
        "v",
        "errorEvent",
        "g",
        "x",
        "successEvent",
        "h",
        "u",
        "calculateLineEnd",
        "",
        "i",
        "J",
        "oneDay",
        "Landroid/text/TextPaint;",
        "j",
        "Landroid/text/TextPaint;",
        "mTextPaint",
        "Lteam/opay/core/api/Country;",
        "o",
        "()Lteam/opay/core/api/Country;",
        "country",
        "Lteam/opay/core/api/GraphQL$Currency;",
        "()Lteam/opay/core/api/GraphQL$Currency;",
        "currency",
        "Lteam/opay/core/api/GraphQL$User;",
        "m",
        "()Lteam/opay/core/api/GraphQL$User;",
        "user",
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
.field public final synthetic b:Lteam/opay/core/api/e;

.field public final c:Lteam/opay/pay/coupon/ObtainCouponRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final e:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Landroidx/lifecycle/MutableLiveData;
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

.field public final g:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/ArrayList<",
            "Lteam/opay/pay/coupon/ChooseCouponItem;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:J

.field public j:Landroid/text/TextPaint;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;Lteam/opay/pay/coupon/ObtainCouponRepository;Lteam/opay/core/api/e;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/coupon/ObtainCouponRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/core/api/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "app"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "obtainCouponRepository"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "sessionProvider"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 17
    .line 18
    .line 19
    iput-object p3, p0, Lteam/opay/pay/coupon/ObtainCouponViewModel;->b:Lteam/opay/core/api/e;

    .line 20
    .line 21
    iput-object p2, p0, Lteam/opay/pay/coupon/ObtainCouponViewModel;->c:Lteam/opay/pay/coupon/ObtainCouponRepository;

    .line 22
    .line 23
    const-string p1, ""

    .line 24
    .line 25
    iput-object p1, p0, Lteam/opay/pay/coupon/ObtainCouponViewModel;->d:Ljava/lang/String;

    .line 26
    .line 27
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 28
    .line 29
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lteam/opay/pay/coupon/ObtainCouponViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 33
    .line 34
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 35
    .line 36
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lteam/opay/pay/coupon/ObtainCouponViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 40
    .line 41
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 42
    .line 43
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lteam/opay/pay/coupon/ObtainCouponViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 47
    .line 48
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 49
    .line 50
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lteam/opay/pay/coupon/ObtainCouponViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    .line 54
    .line 55
    const-wide/32 p1, 0x5265c00

    .line 56
    .line 57
    .line 58
    iput-wide p1, p0, Lteam/opay/pay/coupon/ObtainCouponViewModel;->i:J

    .line 59
    .line 60
    return-void
.end method

.method public static synthetic r(Lteam/opay/pay/coupon/ObtainCouponViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/coupon/ObtainCouponViewModel;->z(Lteam/opay/pay/coupon/ObtainCouponViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic s(Lteam/opay/pay/coupon/ObtainCouponViewModel;)Landroid/text/TextPaint;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/coupon/ObtainCouponViewModel;->j:Landroid/text/TextPaint;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final z(Lteam/opay/pay/coupon/ObtainCouponViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    iget-object v3, v0, Lteam/opay/pay/coupon/ObtainCouponViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 8
    .line 9
    .line 10
    move-result v4

    .line 11
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    const/4 v3, -0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    sget-object v4, Lteam/opay/pay/coupon/ObtainCouponViewModel$a;->a:[I

    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    aget v3, v4, v3

    .line 33
    .line 34
    :goto_0
    if-eq v3, v2, :cond_7

    .line 35
    .line 36
    const/4 v4, 0x2

    .line 37
    if-eq v3, v4, :cond_1

    .line 38
    .line 39
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 40
    .line 41
    .line 42
    goto/16 :goto_6

    .line 43
    .line 44
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Lteam/opay/pay/coupon/VoucherGrabList;

    .line 54
    .line 55
    if-eqz v4, :cond_5

    .line 56
    .line 57
    invoke-virtual {v4}, Lteam/opay/pay/coupon/VoucherGrabList;->a()Ljava/util/ArrayList;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    if-eqz v5, :cond_3

    .line 62
    .line 63
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-eqz v5, :cond_2

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_2
    new-instance v5, Lteam/opay/pay/coupon/ChooseCouponItem;

    .line 71
    .line 72
    sget-object v6, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 73
    .line 74
    invoke-virtual {v6}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    invoke-virtual {v6}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    sget v7, Lteam/opay/pay/R$string;->osdk_available_voucher_new:I

    .line 83
    .line 84
    invoke-virtual {v4}, Lteam/opay/pay/coupon/VoucherGrabList;->a()Ljava/util/ArrayList;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 89
    .line 90
    .line 91
    move-result v8

    .line 92
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    new-array v9, v2, [Ljava/lang/Object;

    .line 97
    .line 98
    aput-object v8, v9, v1

    .line 99
    .line 100
    invoke-virtual {v6, v7, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    const/16 v16, 0x1fe

    .line 105
    .line 106
    const/16 v17, 0x0

    .line 107
    .line 108
    const/4 v8, 0x0

    .line 109
    const/4 v9, 0x0

    .line 110
    const/4 v10, 0x0

    .line 111
    const/4 v11, 0x0

    .line 112
    const/4 v12, 0x0

    .line 113
    const/4 v13, 0x0

    .line 114
    const/4 v14, 0x0

    .line 115
    const/4 v15, 0x0

    .line 116
    move-object v6, v5

    .line 117
    invoke-direct/range {v6 .. v17}, Lteam/opay/pay/coupon/ChooseCouponItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/coupon/Voucher;ZIILjava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4}, Lteam/opay/pay/coupon/VoucherGrabList;->a()Ljava/util/ArrayList;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    if-eqz v6, :cond_3

    .line 136
    .line 137
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    move-object v11, v6

    .line 142
    check-cast v11, Lteam/opay/pay/coupon/Voucher;

    .line 143
    .line 144
    new-instance v6, Lteam/opay/pay/coupon/ChooseCouponItem;

    .line 145
    .line 146
    const/16 v17, 0x1e7

    .line 147
    .line 148
    const/16 v18, 0x0

    .line 149
    .line 150
    const/4 v8, 0x0

    .line 151
    const/4 v9, 0x0

    .line 152
    const/4 v10, 0x0

    .line 153
    const/4 v12, 0x1

    .line 154
    const/4 v13, 0x0

    .line 155
    const/4 v14, 0x0

    .line 156
    const/4 v15, 0x0

    .line 157
    const/16 v16, 0x0

    .line 158
    .line 159
    move-object v7, v6

    .line 160
    invoke-direct/range {v7 .. v18}, Lteam/opay/pay/coupon/ChooseCouponItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/coupon/Voucher;ZIILjava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_3
    :goto_2
    invoke-virtual {v4}, Lteam/opay/pay/coupon/VoucherGrabList;->d()Ljava/util/ArrayList;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    if-eqz v5, :cond_5

    .line 172
    .line 173
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    if-eqz v5, :cond_4

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_4
    new-instance v5, Lteam/opay/pay/coupon/ChooseCouponItem;

    .line 181
    .line 182
    sget-object v6, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 183
    .line 184
    invoke-virtual {v6}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    invoke-virtual {v6}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 189
    .line 190
    .line 191
    move-result-object v6

    .line 192
    sget v7, Lteam/opay/pay/R$string;->osdk_unavailable_voucher_new:I

    .line 193
    .line 194
    invoke-virtual {v4}, Lteam/opay/pay/coupon/VoucherGrabList;->d()Ljava/util/ArrayList;

    .line 195
    .line 196
    .line 197
    move-result-object v8

    .line 198
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 199
    .line 200
    .line 201
    move-result v8

    .line 202
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 203
    .line 204
    .line 205
    move-result-object v8

    .line 206
    new-array v2, v2, [Ljava/lang/Object;

    .line 207
    .line 208
    aput-object v8, v2, v1

    .line 209
    .line 210
    invoke-virtual {v6, v7, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v7

    .line 214
    invoke-virtual {v4}, Lteam/opay/pay/coupon/VoucherGrabList;->c()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v8

    .line 218
    invoke-virtual {v4}, Lteam/opay/pay/coupon/VoucherGrabList;->b()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v9

    .line 222
    const/16 v16, 0x1f8

    .line 223
    .line 224
    const/16 v17, 0x0

    .line 225
    .line 226
    const/4 v10, 0x0

    .line 227
    const/4 v11, 0x0

    .line 228
    const/4 v12, 0x0

    .line 229
    const/4 v13, 0x0

    .line 230
    const/4 v14, 0x0

    .line 231
    const/4 v15, 0x0

    .line 232
    move-object v6, v5

    .line 233
    invoke-direct/range {v6 .. v17}, Lteam/opay/pay/coupon/ChooseCouponItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/coupon/Voucher;ZIILjava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    invoke-virtual {v4}, Lteam/opay/pay/coupon/VoucherGrabList;->d()Ljava/util/ArrayList;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 248
    .line 249
    .line 250
    move-result v2

    .line 251
    if-eqz v2, :cond_5

    .line 252
    .line 253
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    move-object v8, v2

    .line 258
    check-cast v8, Lteam/opay/pay/coupon/Voucher;

    .line 259
    .line 260
    new-instance v2, Lteam/opay/pay/coupon/ChooseCouponItem;

    .line 261
    .line 262
    const/16 v14, 0x1e7

    .line 263
    .line 264
    const/4 v15, 0x0

    .line 265
    const/4 v5, 0x0

    .line 266
    const/4 v6, 0x0

    .line 267
    const/4 v7, 0x0

    .line 268
    const/4 v9, 0x0

    .line 269
    const/4 v10, 0x0

    .line 270
    const/4 v11, 0x0

    .line 271
    const/4 v12, 0x0

    .line 272
    const/4 v13, 0x0

    .line 273
    move-object v4, v2

    .line 274
    invoke-direct/range {v4 .. v15}, Lteam/opay/pay/coupon/ChooseCouponItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/coupon/Voucher;ZIILjava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    goto :goto_3

    .line 281
    :cond_5
    :goto_4
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 286
    .line 287
    .line 288
    move-result v2

    .line 289
    if-eqz v2, :cond_6

    .line 290
    .line 291
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    check-cast v2, Lteam/opay/pay/coupon/ChooseCouponItem;

    .line 296
    .line 297
    invoke-virtual {v0, v2}, Lteam/opay/pay/coupon/ObtainCouponViewModel;->t(Lteam/opay/pay/coupon/ChooseCouponItem;)V

    .line 298
    .line 299
    .line 300
    goto :goto_5

    .line 301
    :cond_6
    iget-object v0, v0, Lteam/opay/pay/coupon/ObtainCouponViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 302
    .line 303
    invoke-virtual {v0, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    goto :goto_6

    .line 307
    :cond_7
    iget-object v0, v0, Lteam/opay/pay/coupon/ObtainCouponViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 308
    .line 309
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 314
    .line 315
    .line 316
    :goto_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 317
    .line 318
    return-object v0
.end method


# virtual methods
.method public final A(Landroid/content/res/Resources;I)V
    .locals 2
    .param p1    # Landroid/content/res/Resources;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "res"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/text/TextPaint;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lteam/opay/pay/coupon/ObtainCouponViewModel;->j:Landroid/text/TextPaint;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 19
    .line 20
    iput p1, v0, Landroid/text/TextPaint;->density:F

    .line 21
    .line 22
    iget-object p1, p0, Lteam/opay/pay/coupon/ObtainCouponViewModel;->j:Landroid/text/TextPaint;

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    int-to-float p2, p2

    .line 27
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public final B(Ljava/util/ArrayList;I)V
    .locals 7
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lteam/opay/pay/coupon/ChooseCouponItem;",
            ">;I)V"
        }
    .end annotation

    .line 1
    const-string v0, "p"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v4, Lteam/opay/pay/coupon/ObtainCouponViewModel$loadTextLine$1;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {v4, p1, p0, p2, v0}, Lteam/opay/pay/coupon/ObtainCouponViewModel$loadTextLine$1;-><init>(Ljava/util/ArrayList;Lteam/opay/pay/coupon/ObtainCouponViewModel;ILjr2;)V

    .line 14
    .line 15
    .line 16
    const/4 v5, 0x3

    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public m()Lteam/opay/core/api/GraphQL$User;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/coupon/ObtainCouponViewModel;->b:Lteam/opay/core/api/e;

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
    iget-object v0, p0, Lteam/opay/pay/coupon/ObtainCouponViewModel;->b:Lteam/opay/core/api/e;

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
    iget-object v0, p0, Lteam/opay/pay/coupon/ObtainCouponViewModel;->b:Lteam/opay/core/api/e;

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

.method public final t(Lteam/opay/pay/coupon/ChooseCouponItem;)V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p1}, Lteam/opay/pay/coupon/ChooseCouponItem;->c()Lteam/opay/pay/coupon/Voucher;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v2}, Lteam/opay/pay/coupon/Voucher;->getValidEndTimeStamp()Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 18
    .line 19
    .line 20
    move-result-wide v5

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-wide v5, v3

    .line 23
    :goto_0
    const/16 v2, 0x3e8

    .line 24
    .line 25
    int-to-long v7, v2

    .line 26
    mul-long v5, v5, v7

    .line 27
    .line 28
    const-string v2, "MMM dd"

    .line 29
    .line 30
    cmp-long v7, v5, v3

    .line 31
    .line 32
    if-lez v7, :cond_4

    .line 33
    .line 34
    new-instance v3, Ljava/util/Date;

    .line 35
    .line 36
    invoke-direct {v3, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    .line 40
    .line 41
    .line 42
    move-result-wide v3

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 44
    .line 45
    .line 46
    move-result-wide v7

    .line 47
    sub-long/2addr v3, v7

    .line 48
    const-wide/16 v7, 0x1

    .line 49
    .line 50
    cmp-long v9, v7, v3

    .line 51
    .line 52
    if-gtz v9, :cond_1

    .line 53
    .line 54
    iget-wide v7, p0, Lteam/opay/pay/coupon/ObtainCouponViewModel;->i:J

    .line 55
    .line 56
    cmp-long v9, v3, v7

    .line 57
    .line 58
    if-gez v9, :cond_1

    .line 59
    .line 60
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 61
    .line 62
    const-string v3, "HH:mm:ss"

    .line 63
    .line 64
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 69
    .line 70
    .line 71
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v2, v3}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    sget v3, Lteam/opay/pay/R$string;->osdk_expire_one_day:I

    .line 80
    .line 81
    new-array v1, v1, [Ljava/lang/Object;

    .line 82
    .line 83
    aput-object v2, v1, v0

    .line 84
    .line 85
    invoke-static {v3, v1}, Ljmf;->l(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p1, v0}, Lteam/opay/pay/coupon/ChooseCouponItem;->l(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Lteam/opay/pay/coupon/ChooseCouponItem;->k(Ljava/lang/Boolean;)V

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_1
    iget-wide v7, p0, Lteam/opay/pay/coupon/ObtainCouponViewModel;->i:J

    .line 99
    .line 100
    cmp-long v9, v3, v7

    .line 101
    .line 102
    if-ltz v9, :cond_3

    .line 103
    .line 104
    const/4 v9, 0x3

    .line 105
    int-to-long v9, v9

    .line 106
    mul-long v9, v9, v7

    .line 107
    .line 108
    cmp-long v11, v3, v9

    .line 109
    .line 110
    if-gez v11, :cond_3

    .line 111
    .line 112
    long-to-float v2, v3

    .line 113
    long-to-float v3, v7

    .line 114
    div-float/2addr v2, v3

    .line 115
    float-to-double v2, v2

    .line 116
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 117
    .line 118
    .line 119
    move-result-wide v2

    .line 120
    double-to-float v2, v2

    .line 121
    float-to-int v2, v2

    .line 122
    if-ne v2, v1, :cond_2

    .line 123
    .line 124
    const-string v3, ""

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_2
    const-string v3, "s"

    .line 128
    .line 129
    :goto_1
    sget v4, Lteam/opay/pay/R$string;->osdk_expire_three_day:I

    .line 130
    .line 131
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    const/4 v5, 0x2

    .line 136
    new-array v5, v5, [Ljava/lang/Object;

    .line 137
    .line 138
    aput-object v2, v5, v0

    .line 139
    .line 140
    aput-object v3, v5, v1

    .line 141
    .line 142
    invoke-static {v4, v5}, Ljmf;->l(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {p1, v0}, Lteam/opay/pay/coupon/ChooseCouponItem;->l(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_3
    new-instance v3, Ljava/text/SimpleDateFormat;

    .line 151
    .line 152
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 153
    .line 154
    invoke-direct {v3, v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 155
    .line 156
    .line 157
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-virtual {v3, v2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    sget v3, Lteam/opay/pay/R$string;->osdk_expire_more_three_day:I

    .line 166
    .line 167
    new-array v1, v1, [Ljava/lang/Object;

    .line 168
    .line 169
    aput-object v2, v1, v0

    .line 170
    .line 171
    invoke-static {v3, v1}, Ljmf;->l(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {p1, v0}, Lteam/opay/pay/coupon/ChooseCouponItem;->l(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_4
    new-instance v3, Ljava/text/SimpleDateFormat;

    .line 180
    .line 181
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 182
    .line 183
    invoke-direct {v3, v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 184
    .line 185
    .line 186
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    invoke-virtual {v3, v2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    sget v3, Lteam/opay/pay/R$string;->osdk_expire_more_three_day:I

    .line 195
    .line 196
    new-array v1, v1, [Ljava/lang/Object;

    .line 197
    .line 198
    aput-object v2, v1, v0

    .line 199
    .line 200
    invoke-static {v3, v1}, Ljmf;->l(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {p1, v0}, Lteam/opay/pay/coupon/ChooseCouponItem;->l(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    :goto_2
    return-void
.end method

.method public final u()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/coupon/ObtainCouponViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final v()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lteam/opay/pay/coupon/ObtainCouponViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final w()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/coupon/ObtainCouponViewModel;->e:Landroidx/lifecycle/MutableLiveData;

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
            "Ljava/util/ArrayList<",
            "Lteam/opay/pay/coupon/ChooseCouponItem;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/coupon/ObtainCouponViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final y(Lteam/opay/pay/coupon/GetValidVouchersRequest;Lag8;)V
    .locals 2
    .param p1    # Lteam/opay/pay/coupon/GetValidVouchersRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "lifecycleOwner"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/pay/coupon/ObtainCouponViewModel;->c:Lteam/opay/pay/coupon/ObtainCouponRepository;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lteam/opay/pay/coupon/ObtainCouponRepository;->g(Lteam/opay/pay/coupon/GetValidVouchersRequest;)Landroidx/lifecycle/LiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v0, Laga;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Laga;-><init>(Lteam/opay/pay/coupon/ObtainCouponViewModel;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lteam/opay/pay/coupon/ObtainCouponViewModel$b;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Lteam/opay/pay/coupon/ObtainCouponViewModel$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2, v1}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
