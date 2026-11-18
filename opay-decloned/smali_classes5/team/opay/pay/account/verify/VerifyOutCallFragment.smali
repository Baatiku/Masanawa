.class public final Lteam/opay/pay/account/verify/VerifyOutCallFragment;
.super Lteam/opay/pay/account/verify/BaseVerifyFragment;
.source "VerifyOutCallFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/account/verify/VerifyOutCallFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/account/verify/BaseVerifyFragment<",
        "Lawf;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0018\u0000 \u001e2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001fB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ!\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u001b\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u001d\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001a\u00a8\u0006 "
    }
    d2 = {
        "Lteam/opay/pay/account/verify/VerifyOutCallFragment;",
        "Lteam/opay/pay/account/verify/BaseVerifyFragment;",
        "Lawf;",
        "<init>",
        "()V",
        "",
        "confirm",
        "",
        "I0",
        "(Z)V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "",
        "text",
        "H0",
        "(Ljava/lang/String;)V",
        "Lteam/opay/pay/account/verify/ValidationType;",
        "q",
        "Lteam/opay/pay/account/verify/ValidationType;",
        "validationType",
        "",
        "r",
        "I",
        "originTime",
        "s",
        "countdown",
        "t",
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
.field public static final t:Lteam/opay/pay/account/verify/VerifyOutCallFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final q:Lteam/opay/pay/account/verify/ValidationType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public r:I

.field public s:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/account/verify/VerifyOutCallFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/account/verify/VerifyOutCallFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/account/verify/VerifyOutCallFragment;->t:Lteam/opay/pay/account/verify/VerifyOutCallFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/account/verify/VerifyOutCallFragment$1;->INSTANCE:Lteam/opay/pay/account/verify/VerifyOutCallFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/pay/account/verify/ValidationType;->POPUP_OUT_CALL:Lteam/opay/pay/account/verify/ValidationType;

    .line 7
    .line 8
    iput-object v0, p0, Lteam/opay/pay/account/verify/VerifyOutCallFragment;->q:Lteam/opay/pay/account/verify/ValidationType;

    .line 9
    .line 10
    return-void
.end method

.method public static final synthetic A0(Lteam/opay/pay/account/verify/VerifyOutCallFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lteam/opay/pay/account/verify/VerifyOutCallFragment;->r:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic B0(Lteam/opay/pay/account/verify/VerifyOutCallFragment;I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/pay/account/verify/VerifyOutCallFragment;->s:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic C0(Lteam/opay/pay/account/verify/VerifyOutCallFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/account/verify/VerifyOutCallFragment;->H0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final D0(Lteam/opay/pay/account/verify/VerifyOutCallFragment;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 6

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "popup_scene"

    .line 8
    .line 9
    invoke-static {v2, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-string v3, "out_call_temp"

    .line 14
    .line 15
    invoke-static {v3, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const/4 v4, 0x2

    .line 20
    new-array v4, v4, [Lkotlin/Pair;

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    aput-object v2, v4, v5

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    aput-object v3, v4, v2

    .line 27
    .line 28
    invoke-static {v1, v4}, Lteam/opay/pay/account/verify/a;->a(Lteam/opay/pay/account/verify/VerifyViewModel;[Lkotlin/Pair;)[Lkotlin/Pair;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    array-length v2, v1

    .line 33
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, [Lkotlin/Pair;

    .line 38
    .line 39
    const-string v2, "verify_poll_out_call_re_call_click"

    .line 40
    .line 41
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0, p0, p1, p2}, Lteam/opay/pay/account/verify/VerifyViewModel;->E(Lteam/opay/pay/account/verify/BaseVerifyFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 52
    .line 53
    return-object p0
.end method

.method public static final E0(Lteam/opay/pay/account/verify/VerifyOutCallFragment;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 4

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "popup_scene"

    .line 8
    .line 9
    invoke-static {v2, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v2, "out_call_temp"

    .line 14
    .line 15
    invoke-static {v2, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    const/4 v2, 0x2

    .line 20
    new-array v2, v2, [Lkotlin/Pair;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    aput-object p1, v2, v3

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    aput-object p2, v2, p1

    .line 27
    .line 28
    invoke-static {v1, v2}, Lteam/opay/pay/account/verify/a;->a(Lteam/opay/pay/account/verify/VerifyViewModel;[Lkotlin/Pair;)[Lkotlin/Pair;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    array-length v1, p2

    .line 33
    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    check-cast p2, [Lkotlin/Pair;

    .line 38
    .line 39
    const-string v1, "verify_poll_out_call_confirm_click"

    .line 40
    .line 41
    invoke-virtual {v0, v1, p2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, p1}, Lteam/opay/pay/account/verify/VerifyOutCallFragment;->I0(Z)V

    .line 45
    .line 46
    .line 47
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 48
    .line 49
    return-object p0
.end method

.method public static final F0(Lteam/opay/pay/account/verify/VerifyOutCallFragment;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 4

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "popup_scene"

    .line 8
    .line 9
    invoke-static {v2, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v2, "out_call_temp"

    .line 14
    .line 15
    invoke-static {v2, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    const/4 v2, 0x2

    .line 20
    new-array v2, v2, [Lkotlin/Pair;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    aput-object p1, v2, v3

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    aput-object p2, v2, p1

    .line 27
    .line 28
    invoke-static {v1, v2}, Lteam/opay/pay/account/verify/a;->a(Lteam/opay/pay/account/verify/VerifyViewModel;[Lkotlin/Pair;)[Lkotlin/Pair;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    array-length p2, p1

    .line 33
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, [Lkotlin/Pair;

    .line 38
    .line 39
    const-string p2, "verify_poll_out_call_close_click"

    .line 40
    .line 41
    invoke-virtual {v0, p2, p1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, v3}, Lteam/opay/pay/account/verify/VerifyOutCallFragment;->I0(Z)V

    .line 45
    .line 46
    .line 47
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 48
    .line 49
    return-object p0
.end method

.method public static final G0(Lteam/opay/pay/account/verify/VerifyOutCallFragment;Ljava/lang/String;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Lawf;

    .line 12
    .line 13
    iget-object p2, p2, Lawf;->c:Lcom/google/android/material/button/MaterialButton;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lteam/opay/pay/account/verify/VerifyOutCallFragment;->H0(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0
.end method

.method private final I0(Z)V
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
    if-eqz p1, :cond_4

    .line 49
    .line 50
    const-string v0, "2"

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_4
    const-string v0, "1"

    .line 54
    .line 55
    :goto_3
    invoke-virtual {v12, v0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->X(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v15

    .line 59
    iget-object v0, v12, Lteam/opay/pay/account/verify/VerifyOutCallFragment;->q:Lteam/opay/pay/account/verify/ValidationType;

    .line 60
    .line 61
    move-object/from16 v16, v0

    .line 62
    .line 63
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->M()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v18

    .line 71
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->P()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v17

    .line 79
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->R()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v19

    .line 87
    new-instance v1, Lteam/opay/pay/account/verify/ValidationRequest;

    .line 88
    .line 89
    move-object v13, v1

    .line 90
    const/16 v28, 0x3f80

    .line 91
    .line 92
    const/16 v29, 0x0

    .line 93
    .line 94
    const/16 v21, 0x0

    .line 95
    .line 96
    const/16 v22, 0x0

    .line 97
    .line 98
    const/16 v23, 0x0

    .line 99
    .line 100
    const/16 v24, 0x0

    .line 101
    .line 102
    const/16 v25, 0x0

    .line 103
    .line 104
    const/16 v26, 0x0

    .line 105
    .line 106
    const/16 v27, 0x0

    .line 107
    .line 108
    invoke-direct/range {v13 .. v29}, Lteam/opay/pay/account/verify/ValidationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/account/verify/ValidationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iget-object v3, v12, Lteam/opay/pay/account/verify/VerifyOutCallFragment;->q:Lteam/opay/pay/account/verify/ValidationType;

    .line 116
    .line 117
    xor-int/lit8 v4, p1, 0x1

    .line 118
    .line 119
    new-instance v9, Ljtf;

    .line 120
    .line 121
    invoke-direct {v9, v12}, Ljtf;-><init>(Lteam/opay/pay/account/verify/VerifyOutCallFragment;)V

    .line 122
    .line 123
    .line 124
    const/16 v10, 0xf0

    .line 125
    .line 126
    const/4 v11, 0x0

    .line 127
    const/4 v5, 0x0

    .line 128
    const/4 v6, 0x0

    .line 129
    const/4 v7, 0x0

    .line 130
    const/4 v8, 0x0

    .line 131
    move-object/from16 v2, p0

    .line 132
    .line 133
    invoke-static/range {v0 .. v11}, Lteam/opay/pay/account/verify/VerifyViewModel;->P0(Lteam/opay/pay/account/verify/VerifyViewModel;Lteam/opay/pay/account/verify/ValidationRequest;Lteam/opay/pay/account/verify/BaseVerifyFragment;Lteam/opay/pay/account/verify/ValidationType;ZLjava/lang/String;Ljava/lang/String;ZLhm6;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    return-void
.end method

.method public static final J0(Lteam/opay/pay/account/verify/VerifyOutCallFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0, p1}, Lkmf;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method

.method public static synthetic u0(Lteam/opay/pay/account/verify/VerifyOutCallFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/account/verify/VerifyOutCallFragment;->J0(Lteam/opay/pay/account/verify/VerifyOutCallFragment;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic v0(Lteam/opay/pay/account/verify/VerifyOutCallFragment;Ljava/lang/String;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/account/verify/VerifyOutCallFragment;->G0(Lteam/opay/pay/account/verify/VerifyOutCallFragment;Ljava/lang/String;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic w0(Lteam/opay/pay/account/verify/VerifyOutCallFragment;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/account/verify/VerifyOutCallFragment;->D0(Lteam/opay/pay/account/verify/VerifyOutCallFragment;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic x0(Lteam/opay/pay/account/verify/VerifyOutCallFragment;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/account/verify/VerifyOutCallFragment;->E0(Lteam/opay/pay/account/verify/VerifyOutCallFragment;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic y0(Lteam/opay/pay/account/verify/VerifyOutCallFragment;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/account/verify/VerifyOutCallFragment;->F0(Lteam/opay/pay/account/verify/VerifyOutCallFragment;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic z0(Lteam/opay/pay/account/verify/VerifyOutCallFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lteam/opay/pay/account/verify/VerifyOutCallFragment;->s:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public final H0(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget v0, p0, Lteam/opay/pay/account/verify/VerifyOutCallFragment;->s:I

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v2, "("

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v0, "s)"

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lawf;

    .line 33
    .line 34
    iget-object v1, v1, Lawf;->b:Lcom/google/android/material/button/MaterialButton;

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    new-instance v5, Lteam/opay/pay/account/verify/VerifyOutCallFragment$updateRealCallText$1;

    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    invoke-direct {v5, p0, p1, v0}, Lteam/opay/pay/account/verify/VerifyOutCallFragment$updateRealCallText$1;-><init>(Lteam/opay/pay/account/verify/VerifyOutCallFragment;Ljava/lang/String;Ljr2;)V

    .line 51
    .line 52
    .line 53
    const/4 v6, 0x2

    .line 54
    const/4 v7, 0x0

    .line 55
    const/4 v4, 0x0

    .line 56
    invoke-static/range {v2 .. v7}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "view"

    .line 3
    .line 4
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1, p2}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyViewModel;->S()Lteam/opay/pay/account/verify/VerifyManager;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object p2, p0, Lteam/opay/pay/account/verify/VerifyOutCallFragment;->q:Lteam/opay/pay/account/verify/ValidationType;

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Lteam/opay/pay/account/verify/VerifyManager;->M(Lteam/opay/pay/account/verify/ValidationType;)Ljava/util/Map;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    const-string p2, "popupScene"

    .line 27
    .line 28
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    check-cast p2, Ljava/lang/String;

    .line 33
    .line 34
    const-string v1, "outCallTemp"

    .line 35
    .line 36
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Ljava/lang/String;

    .line 41
    .line 42
    sget-object v2, Lx7b;->a:Lx7b;

    .line 43
    .line 44
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    const-string v4, "popup_scene"

    .line 49
    .line 50
    invoke-static {v4, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    const-string v5, "out_call_temp"

    .line 55
    .line 56
    invoke-static {v5, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    const/4 v6, 0x2

    .line 61
    new-array v6, v6, [Lkotlin/Pair;

    .line 62
    .line 63
    aput-object v4, v6, v0

    .line 64
    .line 65
    const/4 v4, 0x1

    .line 66
    aput-object v5, v6, v4

    .line 67
    .line 68
    invoke-static {v3, v6}, Lteam/opay/pay/account/verify/a;->a(Lteam/opay/pay/account/verify/VerifyViewModel;[Lkotlin/Pair;)[Lkotlin/Pair;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    array-length v4, v3

    .line 73
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    check-cast v3, [Lkotlin/Pair;

    .line 78
    .line 79
    const-string v4, "verify_poll_out_call_page_show"

    .line 80
    .line 81
    invoke-virtual {v2, v4, v3}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 82
    .line 83
    .line 84
    const-string v2, "countdown"

    .line 85
    .line 86
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    check-cast v2, Ljava/lang/String;

    .line 91
    .line 92
    if-eqz v2, :cond_0

    .line 93
    .line 94
    invoke-static {v2}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    if-eqz v2, :cond_0

    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    :cond_0
    iput v0, p0, Lteam/opay/pay/account/verify/VerifyOutCallFragment;->s:I

    .line 105
    .line 106
    iput v0, p0, Lteam/opay/pay/account/verify/VerifyOutCallFragment;->r:I

    .line 107
    .line 108
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Lawf;

    .line 113
    .line 114
    iget-object v0, v0, Lawf;->c:Lcom/google/android/material/button/MaterialButton;

    .line 115
    .line 116
    const-string v2, "rightButt"

    .line 117
    .line 118
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    check-cast v2, Ljava/lang/CharSequence;

    .line 123
    .line 124
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    check-cast v0, Lawf;

    .line 132
    .line 133
    iget-object v0, v0, Lawf;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 134
    .line 135
    const-string v2, "title"

    .line 136
    .line 137
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    check-cast v2, Ljava/lang/String;

    .line 142
    .line 143
    invoke-static {v2}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    check-cast v0, Lawf;

    .line 155
    .line 156
    iget-object v0, v0, Lawf;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 157
    .line 158
    const-string v2, "content"

    .line 159
    .line 160
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    check-cast v2, Ljava/lang/String;

    .line 165
    .line 166
    invoke-static {v2}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    .line 172
    .line 173
    const-string v0, "leftButt"

    .line 174
    .line 175
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    check-cast p1, Ljava/lang/String;

    .line 180
    .line 181
    if-nez p1, :cond_1

    .line 182
    .line 183
    const-string p1, ""

    .line 184
    .line 185
    :cond_1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    check-cast v0, Lawf;

    .line 190
    .line 191
    iget-object v0, v0, Lawf;->b:Lcom/google/android/material/button/MaterialButton;

    .line 192
    .line 193
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    check-cast v0, Lawf;

    .line 201
    .line 202
    iget-object v0, v0, Lawf;->b:Lcom/google/android/material/button/MaterialButton;

    .line 203
    .line 204
    const-string v2, "cancel"

    .line 205
    .line 206
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    new-instance v2, Lftf;

    .line 210
    .line 211
    invoke-direct {v2, p0, p2, v1}, Lftf;-><init>(Lteam/opay/pay/account/verify/VerifyOutCallFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-static {v0, v2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    check-cast v0, Lawf;

    .line 222
    .line 223
    iget-object v0, v0, Lawf;->c:Lcom/google/android/material/button/MaterialButton;

    .line 224
    .line 225
    const-string v2, "confirm"

    .line 226
    .line 227
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    new-instance v2, Lgtf;

    .line 231
    .line 232
    invoke-direct {v2, p0, p2, v1}, Lgtf;-><init>(Lteam/opay/pay/account/verify/VerifyOutCallFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-static {v0, v2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    check-cast v0, Lawf;

    .line 243
    .line 244
    iget-object v0, v0, Lawf;->f:Landroidx/appcompat/widget/AppCompatImageView;

    .line 245
    .line 246
    const-string v2, "ivClose"

    .line 247
    .line 248
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    check-cast v0, Lawf;

    .line 259
    .line 260
    iget-object v0, v0, Lawf;->f:Landroidx/appcompat/widget/AppCompatImageView;

    .line 261
    .line 262
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    new-instance v2, Lhtf;

    .line 266
    .line 267
    invoke-direct {v2, p0, p2, v1}, Lhtf;-><init>(Lteam/opay/pay/account/verify/VerifyOutCallFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-static {v0, v2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->I()Landroidx/lifecycle/MutableLiveData;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    new-instance v3, Litf;

    .line 286
    .line 287
    invoke-direct {v3, p0, p1}, Litf;-><init>(Lteam/opay/pay/account/verify/VerifyOutCallFragment;Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    new-instance p1, Lteam/opay/pay/account/verify/VerifyOutCallFragment$a;

    .line 291
    .line 292
    invoke-direct {p1, v3}, Lteam/opay/pay/account/verify/VerifyOutCallFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0, v2, p1}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    invoke-virtual {p1, p0, p2, v1}, Lteam/opay/pay/account/verify/VerifyViewModel;->E(Lteam/opay/pay/account/verify/BaseVerifyFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    :cond_2
    return-void
.end method
