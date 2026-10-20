.class public final Lteam/opay/pay/account/verify/VerifyMtnFragment;
.super Lteam/opay/pay/account/verify/Hilt_VerifyMtnFragment;
.source "VerifyMtnFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/account/verify/VerifyMtnFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/account/verify/Hilt_VerifyMtnFragment<",
        "Lhj6;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 \u00182\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0019B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ!\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0004J\u0019\u0010\u0012\u001a\u00020\u00072\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\tJ\u0017\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\tR\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001a"
    }
    d2 = {
        "Lteam/opay/pay/account/verify/VerifyMtnFragment;",
        "Lteam/opay/pay/account/verify/BaseVerifyFragment;",
        "Lhj6;",
        "<init>",
        "()V",
        "",
        "code",
        "",
        "A0",
        "(Ljava/lang/String;)V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "y0",
        "errorMsg",
        "x0",
        "C0",
        "Lteam/opay/pay/account/verify/ValidationType;",
        "v",
        "Lteam/opay/pay/account/verify/ValidationType;",
        "validationType",
        "w",
        "Companion",
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


# static fields
.field public static final w:Lteam/opay/pay/account/verify/VerifyMtnFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final v:Lteam/opay/pay/account/verify/ValidationType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/account/verify/VerifyMtnFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/account/verify/VerifyMtnFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/account/verify/VerifyMtnFragment;->w:Lteam/opay/pay/account/verify/VerifyMtnFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/account/verify/VerifyMtnFragment$1;->INSTANCE:Lteam/opay/pay/account/verify/VerifyMtnFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/account/verify/Hilt_VerifyMtnFragment;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/pay/account/verify/ValidationType;->MTN:Lteam/opay/pay/account/verify/ValidationType;

    .line 7
    .line 8
    iput-object v0, p0, Lteam/opay/pay/account/verify/VerifyMtnFragment;->v:Lteam/opay/pay/account/verify/ValidationType;

    .line 9
    .line 10
    return-void
.end method

.method private final A0(Ljava/lang/String;)V
    .locals 30

    .line 1
    move-object/from16 v12, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->m0()Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getValChainId()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v0, v1

    .line 20
    :goto_0
    const-string v2, ""

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    move-object v14, v2

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move-object v14, v0

    .line 27
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->m0()Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getSecurityId()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    :cond_2
    if-nez v1, :cond_3

    .line 42
    .line 43
    move-object/from16 v20, v2

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_3
    move-object/from16 v20, v1

    .line 47
    .line 48
    :goto_2
    invoke-virtual/range {p0 .. p1}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->X(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v15

    .line 52
    iget-object v0, v12, Lteam/opay/pay/account/verify/VerifyMtnFragment;->v:Lteam/opay/pay/account/verify/ValidationType;

    .line 53
    .line 54
    move-object/from16 v16, v0

    .line 55
    .line 56
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->M()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v18

    .line 64
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->P()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v17

    .line 72
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->R()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v19

    .line 80
    new-instance v1, Lteam/opay/pay/account/verify/ValidationRequest;

    .line 81
    .line 82
    move-object v13, v1

    .line 83
    const/16 v28, 0x3f80

    .line 84
    .line 85
    const/16 v29, 0x0

    .line 86
    .line 87
    const/16 v21, 0x0

    .line 88
    .line 89
    const/16 v22, 0x0

    .line 90
    .line 91
    const/16 v23, 0x0

    .line 92
    .line 93
    const/16 v24, 0x0

    .line 94
    .line 95
    const/16 v25, 0x0

    .line 96
    .line 97
    const/16 v26, 0x0

    .line 98
    .line 99
    const/16 v27, 0x0

    .line 100
    .line 101
    invoke-direct/range {v13 .. v29}, Lteam/opay/pay/account/verify/ValidationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/account/verify/ValidationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iget-object v3, v12, Lteam/opay/pay/account/verify/VerifyMtnFragment;->v:Lteam/opay/pay/account/verify/ValidationType;

    .line 109
    .line 110
    new-instance v9, Lcrf;

    .line 111
    .line 112
    invoke-direct {v9, v12}, Lcrf;-><init>(Lteam/opay/pay/account/verify/VerifyMtnFragment;)V

    .line 113
    .line 114
    .line 115
    const/16 v10, 0xf8

    .line 116
    .line 117
    const/4 v11, 0x0

    .line 118
    const/4 v4, 0x0

    .line 119
    const/4 v5, 0x0

    .line 120
    const/4 v6, 0x0

    .line 121
    const/4 v7, 0x0

    .line 122
    const/4 v8, 0x0

    .line 123
    move-object/from16 v2, p0

    .line 124
    .line 125
    invoke-static/range {v0 .. v11}, Lteam/opay/pay/account/verify/VerifyViewModel;->P0(Lteam/opay/pay/account/verify/VerifyViewModel;Lteam/opay/pay/account/verify/ValidationRequest;Lteam/opay/pay/account/verify/BaseVerifyFragment;Lteam/opay/pay/account/verify/ValidationType;ZLjava/lang/String;Ljava/lang/String;ZLhm6;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    return-void
.end method

.method public static final B0(Lteam/opay/pay/account/verify/VerifyMtnFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lteam/opay/pay/account/verify/VerifyMtnFragment;->x0(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method public static final D0(Lteam/opay/pay/account/verify/VerifyMtnFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 10

    .line 1
    new-instance v9, Lteam/opay/pay/account/verify/VerifyExitEvent;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->P()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string v0, ""

    .line 14
    .line 15
    :cond_0
    move-object v2, v0

    .line 16
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->M()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    const/16 v7, 0x20

    .line 25
    .line 26
    const/4 v8, 0x0

    .line 27
    const/4 v1, 0x1

    .line 28
    const-string v4, "C10101"

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    move-object v0, v9

    .line 32
    move-object v3, p1

    .line 33
    invoke-direct/range {v0 .. v8}, Lteam/opay/pay/account/verify/VerifyExitEvent;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifyViewModel;->S()Lteam/opay/pay/account/verify/VerifyManager;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0, v9}, Lteam/opay/pay/account/verify/VerifyManager;->X(Lteam/opay/pay/account/verify/VerifyExitEvent;)V

    .line 45
    .line 46
    .line 47
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 48
    .line 49
    return-object p0
.end method

.method public static synthetic u0(Lteam/opay/pay/account/verify/VerifyMtnFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/account/verify/VerifyMtnFragment;->z0(Lteam/opay/pay/account/verify/VerifyMtnFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic v0(Lteam/opay/pay/account/verify/VerifyMtnFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/account/verify/VerifyMtnFragment;->D0(Lteam/opay/pay/account/verify/VerifyMtnFragment;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic w0(Lteam/opay/pay/account/verify/VerifyMtnFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/account/verify/VerifyMtnFragment;->B0(Lteam/opay/pay/account/verify/VerifyMtnFragment;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final z0(Lteam/opay/pay/account/verify/VerifyMtnFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "status"

    .line 4
    .line 5
    const-string v3, "verifypool_MTNAuthen"

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    if-nez v4, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object p2, Lx7b;->a:Lx7b;

    .line 17
    .line 18
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    const-string v4, "0"

    .line 23
    .line 24
    invoke-static {v2, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    new-array v1, v1, [Lkotlin/Pair;

    .line 29
    .line 30
    aput-object v2, v1, v0

    .line 31
    .line 32
    invoke-static {p3, v1}, Lteam/opay/pay/account/verify/a;->a(Lteam/opay/pay/account/verify/VerifyViewModel;[Lkotlin/Pair;)[Lkotlin/Pair;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    array-length v0, p3

    .line 37
    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    check-cast p3, [Lkotlin/Pair;

    .line 42
    .line 43
    invoke-virtual {p2, v3, p3}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, p1}, Lteam/opay/pay/account/verify/VerifyMtnFragment;->A0(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v5, "first step fail, , error_msg="

    .line 60
    .line 61
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v5, ", error_code="

    .line 68
    .line 69
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-static {p1, v4}, Lkmf;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    sget-object p1, Lx7b;->a:Lx7b;

    .line 83
    .line 84
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    const-string v5, "error_code"

    .line 89
    .line 90
    invoke-static {v5, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    const-string v5, "error_msg"

    .line 95
    .line 96
    invoke-static {v5, p3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    const-string v6, "1"

    .line 101
    .line 102
    invoke-static {v2, v6}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    const/4 v6, 0x3

    .line 107
    new-array v6, v6, [Lkotlin/Pair;

    .line 108
    .line 109
    aput-object p2, v6, v0

    .line 110
    .line 111
    aput-object v5, v6, v1

    .line 112
    .line 113
    const/4 p2, 0x2

    .line 114
    aput-object v2, v6, p2

    .line 115
    .line 116
    invoke-static {v4, v6}, Lteam/opay/pay/account/verify/a;->a(Lteam/opay/pay/account/verify/VerifyViewModel;[Lkotlin/Pair;)[Lkotlin/Pair;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    array-length v0, p2

    .line 121
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    check-cast p2, [Lkotlin/Pair;

    .line 126
    .line 127
    invoke-virtual {p1, v3, p2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, p3}, Lteam/opay/pay/account/verify/VerifyMtnFragment;->x0(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 134
    .line 135
    return-object p0
.end method


# virtual methods
.method public final C0(Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    sget v0, Lteam/opay/pay/R$string;->confirm:I

    .line 6
    .line 7
    invoke-static {v0}, Ljmf;->k(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    new-instance v6, Lbrf;

    .line 12
    .line 13
    invoke-direct {v6, p0, p1}, Lbrf;-><init>(Lteam/opay/pay/account/verify/VerifyMtnFragment;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/16 v7, 0x38

    .line 17
    .line 18
    const/4 v8, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v5, 0x0

    .line 22
    move-object v0, p1

    .line 23
    invoke-static/range {v0 .. v8}, Lteam/opay/pay/wallet/a;->c(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;ZILjava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    sget-object p1, Lx7b;->a:Lx7b;

    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const/4 v0, 0x0

    .line 18
    new-array v0, v0, [Lkotlin/Pair;

    .line 19
    .line 20
    invoke-static {p2, v0}, Lteam/opay/pay/account/verify/a;->a(Lteam/opay/pay/account/verify/VerifyViewModel;[Lkotlin/Pair;)[Lkotlin/Pair;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    array-length v0, p2

    .line 25
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    check-cast p2, [Lkotlin/Pair;

    .line 30
    .line 31
    const-string v0, "verifypool_mtn_show"

    .line 32
    .line 33
    invoke-virtual {p1, v0, p2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifyMtnFragment;->y0()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final x0(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->S()Lteam/opay/pay/account/verify/VerifyManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lteam/opay/pay/account/verify/ValidationType;->OTP:Lteam/opay/pay/account/verify/ValidationType;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lteam/opay/pay/account/verify/VerifyManager;->q(Lteam/opay/pay/account/verify/ValidationType;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyViewModel;->g0()Landroidx/lifecycle/MutableLiveData;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    if-nez p1, :cond_1

    .line 30
    .line 31
    const-string p1, ""

    .line 32
    .line 33
    :cond_1
    invoke-virtual {p0, p1}, Lteam/opay/pay/account/verify/VerifyMtnFragment;->C0(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method

.method public final y0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->S()Lteam/opay/pay/account/verify/VerifyManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lteam/opay/pay/account/verify/VerifyMtnFragment;->v:Lteam/opay/pay/account/verify/ValidationType;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lteam/opay/pay/account/verify/VerifyManager;->M(Lteam/opay/pay/account/verify/ValidationType;)Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-string v1, "clientId"

    .line 18
    .line 19
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/String;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    sget-object v1, Lteam/opay/pay/onboarding/tabs/MTNSignUtil;->a:Lteam/opay/pay/onboarding/tabs/MTNSignUtil;

    .line 37
    .line 38
    new-instance v2, Larf;

    .line 39
    .line 40
    invoke-direct {v2, p0}, Larf;-><init>(Lteam/opay/pay/account/verify/VerifyMtnFragment;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p0, v0, v2}, Lteam/opay/pay/onboarding/tabs/MTNSignUtil;->a(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lhm6;)V

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 52
    .line 53
    .line 54
    :goto_2
    return-void
.end method
