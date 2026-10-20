.class public final Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog;
.super Lteam/opay/core/base/BaseSheetFragmentV2;
.source "StampDutyConfirmDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/base/BaseSheetFragmentV2<",
        "Lfe3;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 -2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001.B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bR\"\u0010\u0013\u001a\u00020\u000c8\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R0\u0010\u001b\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\t\u0018\u00010\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u001f\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u001b\u0010%\u001a\u00020 8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010$R\u0018\u0010\'\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010\u001eR\u001d\u0010,\u001a\u0004\u0018\u00010(8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008)\u0010\"\u001a\u0004\u0008*\u0010+\u00a8\u0006/"
    }
    d2 = {
        "Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog;",
        "Lteam/opay/core/base/BaseSheetFragmentV2;",
        "Lfe3;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "",
        "k",
        "Z",
        "I",
        "()Z",
        "setSupportBgTransparent",
        "(Z)V",
        "supportBgTransparent",
        "Lkotlin/Function1;",
        "l",
        "Lkotlin/jvm/functions/Function1;",
        "getCallback",
        "()Lkotlin/jvm/functions/Function1;",
        "c0",
        "(Lkotlin/jvm/functions/Function1;)V",
        "callback",
        "",
        "m",
        "Ljava/lang/String;",
        "stampDutyAmount",
        "Lteam/opay/core/settings/NoClearStorage;",
        "n",
        "Lid8;",
        "X",
        "()Lteam/opay/core/settings/NoClearStorage;",
        "storage",
        "o",
        "serviceType",
        "Lteam/opay/pay/home/tabs/ac/StampDutyConfigSwicher;",
        "p",
        "W",
        "()Lteam/opay/pay/home/tabs/ac/StampDutyConfigSwicher;",
        "config",
        "q",
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
.field public static final q:Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public k:Z

.field public l:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public m:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final n:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public o:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final p:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog;->q:Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog$1;->INSTANCE:Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/core/base/BaseSheetFragmentV2;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog;->k:Z

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    iput-object v0, p0, Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog;->m:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v0, Lc3e;

    .line 14
    .line 15
    invoke-direct {v0}, Lc3e;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog;->n:Lid8;

    .line 23
    .line 24
    new-instance v0, Ld3e;

    .line 25
    .line 26
    invoke-direct {v0}, Ld3e;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog;->p:Lid8;

    .line 34
    .line 35
    return-void
.end method

.method public static synthetic P(Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog;->b0(Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog;Landroid/widget/CompoundButton;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Q()Lteam/opay/core/settings/NoClearStorage;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog;->d0()Lteam/opay/core/settings/NoClearStorage;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic R(Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog;Lteam/opay/pay/home/tabs/ac/StampDutyCofirmDto;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog;->Z(Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog;Lteam/opay/pay/home/tabs/ac/StampDutyCofirmDto;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic S(Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog;->a0(Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic T(Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog;Lteam/opay/pay/home/tabs/ac/StampDutyCofirmDto;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog;->Y(Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog;Lteam/opay/pay/home/tabs/ac/StampDutyCofirmDto;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic U()Lteam/opay/pay/home/tabs/ac/StampDutyConfigSwicher;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog;->V()Lteam/opay/pay/home/tabs/ac/StampDutyConfigSwicher;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final V()Lteam/opay/pay/home/tabs/ac/StampDutyConfigSwicher;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/home/tabs/ac/StampDutyConfigSwicher;->Companion:Lteam/opay/pay/home/tabs/ac/StampDutyConfigSwicher$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/home/tabs/ac/StampDutyConfigSwicher$Companion;->a()Lteam/opay/pay/home/tabs/ac/StampDutyConfigSwicher;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private final X()Lteam/opay/core/settings/NoClearStorage;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog;->n:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/core/settings/NoClearStorage;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final Y(Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog;Lteam/opay/pay/home/tabs/ac/StampDutyCofirmDto;)Lkotlin/Unit;
    .locals 4

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog;->o:Ljava/lang/String;

    .line 4
    .line 5
    const-string v2, "service_type"

    .line 6
    .line 7
    invoke-static {v2, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x1

    .line 12
    new-array v2, v2, [Lkotlin/Pair;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object v1, v2, v3

    .line 16
    .line 17
    const-string v1, "transfer_popup_sd_continue_click"

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/ac/StampDutyCofirmDto;->b()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "requireContext(...)"

    .line 40
    .line 41
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/ac/StampDutyCofirmDto;->b()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {v0, p1}, Lkmf;->E(Landroid/content/Context;Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    :goto_0
    iget-object p1, p0, Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog;->l:Lkotlin/jvm/functions/Function1;

    .line 53
    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 57
    .line 58
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    .line 62
    .line 63
    .line 64
    invoke-direct {p0}, Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog;->X()Lteam/opay/core/settings/NoClearStorage;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p0, v3}, Lteam/opay/core/settings/NoClearStorage;->q2(I)V

    .line 69
    .line 70
    .line 71
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 72
    .line 73
    return-object p0
.end method

.method public static final Z(Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog;Lteam/opay/pay/home/tabs/ac/StampDutyCofirmDto;I)Lkotlin/Unit;
    .locals 5

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog;->o:Ljava/lang/String;

    .line 4
    .line 5
    const-string v2, "service_type"

    .line 6
    .line 7
    invoke-static {v2, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x1

    .line 12
    new-array v3, v2, [Lkotlin/Pair;

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    aput-object v1, v3, v4

    .line 16
    .line 17
    const-string v1, "transfer_popup_sd_continue_click"

    .line 18
    .line 19
    invoke-virtual {v0, v1, v3}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/ac/StampDutyCofirmDto;->e()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "requireContext(...)"

    .line 40
    .line 41
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/ac/StampDutyCofirmDto;->e()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {v0, p1}, Lkmf;->E(Landroid/content/Context;Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    :goto_0
    iget-object p1, p0, Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog;->l:Lkotlin/jvm/functions/Function1;

    .line 53
    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 57
    .line 58
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    :cond_2
    :goto_1
    invoke-direct {p0}, Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog;->X()Lteam/opay/core/settings/NoClearStorage;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    add-int/2addr p2, v2

    .line 66
    invoke-virtual {p1, p2}, Lteam/opay/core/settings/NoClearStorage;->q2(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    .line 70
    .line 71
    .line 72
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 73
    .line 74
    return-object p0
.end method

.method public static final a0(Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final b0(Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog;Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 1
    sget-object p1, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog;->o:Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, "service_type"

    .line 6
    .line 7
    invoke-static {v1, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x1

    .line 12
    new-array v1, v1, [Lkotlin/Pair;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    aput-object v0, v1, v2

    .line 16
    .line 17
    const-string v0, "transfer_popup_sd_remind_click"

    .line 18
    .line 19
    invoke-virtual {p1, v0, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog;->X()Lteam/opay/core/settings/NoClearStorage;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0, p2}, Lteam/opay/core/settings/NoClearStorage;->p2(Z)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private static final d0()Lteam/opay/core/settings/NoClearStorage;
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/core/settings/NoClearStorage;

    .line 2
    .line 3
    invoke-static {}, Ljmf;->i()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lteam/opay/core/settings/NoClearStorage;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method


# virtual methods
.method public I()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog;->k:Z

    .line 2
    .line 3
    return v0
.end method

.method public final W()Lteam/opay/pay/home/tabs/ac/StampDutyConfigSwicher;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog;->p:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/home/tabs/ac/StampDutyConfigSwicher;

    .line 8
    .line 9
    return-object v0
.end method

.method public final c0(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog;->l:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9
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
    const/4 v1, 0x1

    .line 3
    const-string v2, "view"

    .line 4
    .line 5
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string p2, "key_stamp_duty_amount"

    .line 16
    .line 17
    const-string v2, ""

    .line 18
    .line 19
    invoke-virtual {p1, p2, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog;->m:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string p2, "key_service_type"

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog;->o:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog;->W()Lteam/opay/pay/home/tabs/ac/StampDutyConfigSwicher;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const/4 p2, 0x0

    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/ac/StampDutyConfigSwicher;->getConfirmDto()Lteam/opay/pay/home/tabs/ac/StampDutyCofirmDto;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move-object p1, p2

    .line 50
    :goto_0
    if-nez p1, :cond_1

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Lfe3;

    .line 61
    .line 62
    iget-object v2, v2, Lfe3;->g:Landroid/widget/TextView;

    .line 63
    .line 64
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/ac/StampDutyCofirmDto;->h()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Lfe3;

    .line 76
    .line 77
    iget-object v2, v2, Lfe3;->i:Landroid/widget/TextView;

    .line 78
    .line 79
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/ac/StampDutyCofirmDto;->g()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    if-eqz v3, :cond_2

    .line 84
    .line 85
    iget-object v5, p0, Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog;->m:Ljava/lang/String;

    .line 86
    .line 87
    const/4 v7, 0x4

    .line 88
    const/4 v8, 0x0

    .line 89
    const-string v4, "%s"

    .line 90
    .line 91
    const/4 v6, 0x0

    .line 92
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    :cond_2
    invoke-static {p2}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    check-cast p2, Lfe3;

    .line 108
    .line 109
    iget-object p2, p2, Lfe3;->h:Landroid/widget/TextView;

    .line 110
    .line 111
    const-string v2, "tvContent"

    .line 112
    .line 113
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/ac/StampDutyCofirmDto;->a()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    if-eqz v2, :cond_4

    .line 121
    .line 122
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-nez v2, :cond_3

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_3
    const/4 v2, 0x0

    .line 130
    goto :goto_2

    .line 131
    :cond_4
    :goto_1
    const/4 v2, 0x1

    .line 132
    :goto_2
    xor-int/2addr v2, v1

    .line 133
    invoke-static {p2, v2}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    check-cast p2, Lfe3;

    .line 141
    .line 142
    iget-object p2, p2, Lfe3;->h:Landroid/widget/TextView;

    .line 143
    .line 144
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/ac/StampDutyCofirmDto;->a()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-static {v2}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    check-cast p2, Lfe3;

    .line 160
    .line 161
    iget-object p2, p2, Lfe3;->c:Lgd8;

    .line 162
    .line 163
    iget-object p2, p2, Lgd8;->b:Lcom/google/android/material/button/MaterialButton;

    .line 164
    .line 165
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/ac/StampDutyCofirmDto;->c()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    check-cast p2, Lfe3;

    .line 177
    .line 178
    iget-object p2, p2, Lfe3;->c:Lgd8;

    .line 179
    .line 180
    iget-object p2, p2, Lgd8;->b:Lcom/google/android/material/button/MaterialButton;

    .line 181
    .line 182
    const-string v2, "btnCancel"

    .line 183
    .line 184
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    new-instance v2, Le3e;

    .line 188
    .line 189
    invoke-direct {v2, p0, p1}, Le3e;-><init>(Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog;Lteam/opay/pay/home/tabs/ac/StampDutyCofirmDto;)V

    .line 190
    .line 191
    .line 192
    invoke-static {p2, v2}, Lee1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    check-cast p2, Lfe3;

    .line 200
    .line 201
    iget-object p2, p2, Lfe3;->c:Lgd8;

    .line 202
    .line 203
    iget-object p2, p2, Lgd8;->c:Lcom/google/android/material/button/MaterialButton;

    .line 204
    .line 205
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/ac/StampDutyCofirmDto;->f()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    .line 211
    .line 212
    invoke-direct {p0}, Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog;->X()Lteam/opay/core/settings/NoClearStorage;

    .line 213
    .line 214
    .line 215
    move-result-object p2

    .line 216
    invoke-virtual {p2}, Lteam/opay/core/settings/NoClearStorage;->I0()I

    .line 217
    .line 218
    .line 219
    move-result p2

    .line 220
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    check-cast v2, Lfe3;

    .line 225
    .line 226
    iget-object v2, v2, Lfe3;->c:Lgd8;

    .line 227
    .line 228
    iget-object v2, v2, Lgd8;->c:Lcom/google/android/material/button/MaterialButton;

    .line 229
    .line 230
    const-string v3, "btnConfirm"

    .line 231
    .line 232
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    new-instance v3, Lf3e;

    .line 236
    .line 237
    invoke-direct {v3, p0, p1, p2}, Lf3e;-><init>(Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog;Lteam/opay/pay/home/tabs/ac/StampDutyCofirmDto;I)V

    .line 238
    .line 239
    .line 240
    invoke-static {v2, v3}, Lee1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    check-cast v2, Lfe3;

    .line 248
    .line 249
    iget-object v2, v2, Lfe3;->b:Landroid/widget/ImageView;

    .line 250
    .line 251
    const-string v3, "btnClose"

    .line 252
    .line 253
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    new-instance v3, Lg3e;

    .line 257
    .line 258
    invoke-direct {v3, p0}, Lg3e;-><init>(Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog;)V

    .line 259
    .line 260
    .line 261
    invoke-static {v2, v3}, Lee1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/ac/StampDutyCofirmDto;->d()I

    .line 265
    .line 266
    .line 267
    move-result p1

    .line 268
    const-string v2, "service_type"

    .line 269
    .line 270
    const-string v3, "remindGroup"

    .line 271
    .line 272
    if-lt p2, p1, :cond_5

    .line 273
    .line 274
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    check-cast p1, Lfe3;

    .line 279
    .line 280
    iget-object p1, p1, Lfe3;->f:Landroidx/constraintlayout/widget/Group;

    .line 281
    .line 282
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 286
    .line 287
    .line 288
    sget-object p1, Lx7b;->a:Lx7b;

    .line 289
    .line 290
    iget-object p2, p0, Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog;->o:Ljava/lang/String;

    .line 291
    .line 292
    invoke-static {v2, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 293
    .line 294
    .line 295
    move-result-object p2

    .line 296
    new-array v3, v1, [Lkotlin/Pair;

    .line 297
    .line 298
    aput-object p2, v3, v0

    .line 299
    .line 300
    const-string p2, "transfer_popup_sd_remind_show"

    .line 301
    .line 302
    invoke-virtual {p1, p2, v3}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    check-cast p1, Lfe3;

    .line 310
    .line 311
    iget-object p1, p1, Lfe3;->d:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 312
    .line 313
    new-instance p2, Lh3e;

    .line 314
    .line 315
    invoke-direct {p2, p0}, Lh3e;-><init>(Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 319
    .line 320
    .line 321
    goto :goto_3

    .line 322
    :cond_5
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    check-cast p1, Lfe3;

    .line 327
    .line 328
    iget-object p1, p1, Lfe3;->f:Landroidx/constraintlayout/widget/Group;

    .line 329
    .line 330
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 334
    .line 335
    .line 336
    :goto_3
    invoke-direct {p0}, Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog;->X()Lteam/opay/core/settings/NoClearStorage;

    .line 337
    .line 338
    .line 339
    move-result-object p1

    .line 340
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 341
    .line 342
    .line 343
    move-result-wide v3

    .line 344
    invoke-virtual {p1, v3, v4}, Lteam/opay/core/settings/NoClearStorage;->o2(J)V

    .line 345
    .line 346
    .line 347
    sget-object p1, Lx7b;->a:Lx7b;

    .line 348
    .line 349
    iget-object p2, p0, Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog;->o:Ljava/lang/String;

    .line 350
    .line 351
    invoke-static {v2, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 352
    .line 353
    .line 354
    move-result-object p2

    .line 355
    new-array v1, v1, [Lkotlin/Pair;

    .line 356
    .line 357
    aput-object p2, v1, v0

    .line 358
    .line 359
    const-string p2, "transfer_popup_sd_show"

    .line 360
    .line 361
    invoke-virtual {p1, p2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 362
    .line 363
    .line 364
    return-void
.end method
