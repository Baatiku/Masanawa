.class public final Lteam/opay/pay/cashio/CashOutActivity;
.super Lteam/opay/pay/cashio/Hilt_CashOutActivity;
.source "CashOutActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/cashio/CashOutActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 /2\u00020\u0001:\u00010B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\u000b\u001a\u00020\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0019\u0010\r\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\r\u0010\u0008J\u0019\u0010\u000e\u001a\u00020\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0014\u00a2\u0006\u0004\u0008\u000e\u0010\u000cJ#\u0010\u0013\u001a\u00020\u00062\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J-\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00112\u0014\u0010\u0017\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0012\u0004\u0012\u00020\u00060\u0016H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019R\u001b\u0010\u001f\u001a\u00020\u001a8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001eR\u001b\u0010$\u001a\u00020 8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008!\u0010\u001c\u001a\u0004\u0008\"\u0010#R\u001b\u0010)\u001a\u00020%8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008&\u0010\u001c\u001a\u0004\u0008\'\u0010(R\u001b\u0010.\u001a\u00020*8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008+\u0010\u001c\u001a\u0004\u0008,\u0010-\u00a8\u00061"
    }
    d2 = {
        "Lteam/opay/pay/cashio/CashOutActivity;",
        "Lteam/opay/pay/android/BaseActivity;",
        "<init>",
        "()V",
        "Landroid/content/Intent;",
        "intent",
        "",
        "Q",
        "(Landroid/content/Intent;)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onPostCreate",
        "(Landroid/os/Bundle;)V",
        "onNewIntent",
        "onCreate",
        "Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;",
        "dispatchData",
        "",
        "amount",
        "W",
        "(Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;Ljava/lang/String;)V",
        "phone",
        "Lkotlin/Function1;",
        "callback",
        "T",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V",
        "Lse;",
        "e",
        "Lid8;",
        "P",
        "()Lse;",
        "viewBinding",
        "Lteam/opay/pay/pin/PinViewModel;",
        "f",
        "O",
        "()Lteam/opay/pay/pin/PinViewModel;",
        "pinViewModel",
        "Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel;",
        "g",
        "N",
        "()Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel;",
        "dataViewModel",
        "Lteam/opay/pay/cashio/CashViewModel;",
        "h",
        "M",
        "()Lteam/opay/pay/cashio/CashViewModel;",
        "cashViewModel",
        "i",
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
.field public static final i:Lteam/opay/pay/cashio/CashOutActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final j:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final k:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final l:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final m:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final n:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final o:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final p:I

.field public static final q:I

.field public static final r:I

.field public static final s:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final t:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final e:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/cashio/CashOutActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/cashio/CashOutActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/cashio/CashOutActivity;->i:Lteam/opay/pay/cashio/CashOutActivity$Companion;

    .line 8
    .line 9
    const-string v0, "phone"

    .line 10
    .line 11
    sput-object v0, Lteam/opay/pay/cashio/CashOutActivity;->j:Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "name"

    .line 14
    .line 15
    sput-object v0, Lteam/opay/pay/cashio/CashOutActivity;->k:Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "amount"

    .line 18
    .line 19
    sput-object v0, Lteam/opay/pay/cashio/CashOutActivity;->l:Ljava/lang/String;

    .line 20
    .line 21
    const-string v0, "photo"

    .line 22
    .line 23
    sput-object v0, Lteam/opay/pay/cashio/CashOutActivity;->m:Ljava/lang/String;

    .line 24
    .line 25
    const-string v0, "role"

    .line 26
    .line 27
    sput-object v0, Lteam/opay/pay/cashio/CashOutActivity;->n:Ljava/lang/String;

    .line 28
    .line 29
    const-string v0, "entrance_id"

    .line 30
    .line 31
    sput-object v0, Lteam/opay/pay/cashio/CashOutActivity;->o:Ljava/lang/String;

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    sput v0, Lteam/opay/pay/cashio/CashOutActivity;->p:I

    .line 35
    .line 36
    const/4 v0, 0x2

    .line 37
    sput v0, Lteam/opay/pay/cashio/CashOutActivity;->q:I

    .line 38
    .line 39
    const/4 v0, 0x3

    .line 40
    sput v0, Lteam/opay/pay/cashio/CashOutActivity;->r:I

    .line 41
    .line 42
    const-string v0, "key_from_service"

    .line 43
    .line 44
    sput-object v0, Lteam/opay/pay/cashio/CashOutActivity;->s:Ljava/lang/String;

    .line 45
    .line 46
    const-string v0, "key_is_new_ac_user"

    .line 47
    .line 48
    sput-object v0, Lteam/opay/pay/cashio/CashOutActivity;->t:Ljava/lang/String;

    .line 49
    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->activity_fragment_container_below_actionbar:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/cashio/Hilt_CashOutActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lc42;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lc42;-><init>(Lteam/opay/pay/cashio/CashOutActivity;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lteam/opay/pay/cashio/CashOutActivity;->e:Lid8;

    .line 16
    .line 17
    new-instance v0, Lteam/opay/pay/cashio/CashOutActivity$special$$inlined$viewModels$default$1;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lteam/opay/pay/cashio/CashOutActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 23
    .line 24
    const-class v2, Lteam/opay/pay/pin/PinViewModel;

    .line 25
    .line 26
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    new-instance v3, Lteam/opay/pay/cashio/CashOutActivity$special$$inlined$viewModels$default$2;

    .line 31
    .line 32
    invoke-direct {v3, p0}, Lteam/opay/pay/cashio/CashOutActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 33
    .line 34
    .line 35
    new-instance v4, Lteam/opay/pay/cashio/CashOutActivity$special$$inlined$viewModels$default$3;

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/cashio/CashOutActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lteam/opay/pay/cashio/CashOutActivity;->f:Lid8;

    .line 45
    .line 46
    new-instance v0, Lteam/opay/pay/cashio/CashOutActivity$special$$inlined$viewModels$default$4;

    .line 47
    .line 48
    invoke-direct {v0, p0}, Lteam/opay/pay/cashio/CashOutActivity$special$$inlined$viewModels$default$4;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 49
    .line 50
    .line 51
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 52
    .line 53
    const-class v2, Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel;

    .line 54
    .line 55
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    new-instance v3, Lteam/opay/pay/cashio/CashOutActivity$special$$inlined$viewModels$default$5;

    .line 60
    .line 61
    invoke-direct {v3, p0}, Lteam/opay/pay/cashio/CashOutActivity$special$$inlined$viewModels$default$5;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 62
    .line 63
    .line 64
    new-instance v4, Lteam/opay/pay/cashio/CashOutActivity$special$$inlined$viewModels$default$6;

    .line 65
    .line 66
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/cashio/CashOutActivity$special$$inlined$viewModels$default$6;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 67
    .line 68
    .line 69
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 70
    .line 71
    .line 72
    iput-object v1, p0, Lteam/opay/pay/cashio/CashOutActivity;->g:Lid8;

    .line 73
    .line 74
    new-instance v0, Lteam/opay/pay/cashio/CashOutActivity$special$$inlined$viewModels$default$7;

    .line 75
    .line 76
    invoke-direct {v0, p0}, Lteam/opay/pay/cashio/CashOutActivity$special$$inlined$viewModels$default$7;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 77
    .line 78
    .line 79
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 80
    .line 81
    const-class v2, Lteam/opay/pay/cashio/CashViewModel;

    .line 82
    .line 83
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    new-instance v3, Lteam/opay/pay/cashio/CashOutActivity$special$$inlined$viewModels$default$8;

    .line 88
    .line 89
    invoke-direct {v3, p0}, Lteam/opay/pay/cashio/CashOutActivity$special$$inlined$viewModels$default$8;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 90
    .line 91
    .line 92
    new-instance v4, Lteam/opay/pay/cashio/CashOutActivity$special$$inlined$viewModels$default$9;

    .line 93
    .line 94
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/cashio/CashOutActivity$special$$inlined$viewModels$default$9;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 95
    .line 96
    .line 97
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 98
    .line 99
    .line 100
    iput-object v1, p0, Lteam/opay/pay/cashio/CashOutActivity;->h:Lid8;

    .line 101
    .line 102
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/cashio/CashOutActivity;Landroid/content/Intent;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/cashio/CashOutActivity;->R(Lteam/opay/pay/cashio/CashOutActivity;Landroid/content/Intent;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B(Lteam/opay/pay/cashio/CashOutActivity;Lkotlin/jvm/functions/Function1;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/cashio/CashOutActivity;->U(Lteam/opay/pay/cashio/CashOutActivity;Lkotlin/jvm/functions/Function1;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C(Lteam/opay/pay/cashio/CashOutActivity;Landroid/net/Uri;Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/cashio/CashOutActivity;->S(Lteam/opay/pay/cashio/CashOutActivity;Landroid/net/Uri;Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic D(Lteam/opay/pay/cashio/CashOutActivity;)Lse;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/cashio/CashOutActivity;->X(Lteam/opay/pay/cashio/CashOutActivity;)Lse;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic E(Lteam/opay/pay/cashio/CashOutActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/cashio/CashOutActivity;->V(Lteam/opay/pay/cashio/CashOutActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic F()I
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/cashio/CashOutActivity;->r:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic G()I
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/cashio/CashOutActivity;->p:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic H()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/cashio/CashOutActivity;->o:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic I()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/cashio/CashOutActivity;->s:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic J()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/cashio/CashOutActivity;->t:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic K()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/cashio/CashOutActivity;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic L()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/cashio/CashOutActivity;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private final M()Lteam/opay/pay/cashio/CashViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashio/CashOutActivity;->h:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/cashio/CashViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final N()Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashio/CashOutActivity;->g:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final O()Lteam/opay/pay/pin/PinViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashio/CashOutActivity;->f:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/pin/PinViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final Q(Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lteam/opay/pay/cashio/CashOutActivity;->M()Lteam/opay/pay/cashio/CashViewModel;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lteam/opay/pay/cashio/CashOutActivity;->o:Ljava/lang/String;

    .line 12
    .line 13
    sget v2, Lteam/opay/pay/cashio/CashOutActivity;->r:I

    .line 14
    .line 15
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {v0, v1}, Lteam/opay/pay/cashio/CashViewModel;->I(I)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lteam/opay/pay/cashio/CashOutActivity;->M()Lteam/opay/pay/cashio/CashViewModel;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sget-object v1, Lteam/opay/pay/cashio/CashOutActivity;->s:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Lteam/opay/pay/cashio/CashViewModel;->J(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lteam/opay/pay/cashio/CashOutActivity;->M()Lteam/opay/pay/cashio/CashViewModel;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sget-object v1, Lteam/opay/pay/cashio/CashOutActivity;->t:Ljava/lang/String;

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Lteam/opay/pay/cashio/CashViewModel;->K(Ljava/lang/Boolean;)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0}, Lteam/opay/pay/cashio/CashOutActivity;->N()Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    new-instance v1, Lz32;

    .line 58
    .line 59
    invoke-direct {v1, p0, p1}, Lz32;-><init>(Lteam/opay/pay/cashio/CashOutActivity;Landroid/content/Intent;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p0, v1}, Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel;->q(Lag8;Lkotlin/jvm/functions/Function0;)V

    .line 63
    .line 64
    .line 65
    goto/16 :goto_2

    .line 66
    .line 67
    :cond_0
    const-string p1, "serviceType"

    .line 68
    .line 69
    invoke-virtual {v0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const-string v1, "qrcode"

    .line 74
    .line 75
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_1

    .line 80
    .line 81
    invoke-direct {p0}, Lteam/opay/pay/cashio/CashOutActivity;->M()Lteam/opay/pay/cashio/CashViewModel;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    const-string v1, "QRCode"

    .line 86
    .line 87
    invoke-virtual {p1, v1}, Lteam/opay/pay/cashio/CashViewModel;->J(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    const-string v1, "cashout"

    .line 95
    .line 96
    if-eqz p1, :cond_3

    .line 97
    .line 98
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-nez p1, :cond_2

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-eqz p1, :cond_3

    .line 114
    .line 115
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    const-string v2, "/qrcode"

    .line 120
    .line 121
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-eqz p1, :cond_3

    .line 126
    .line 127
    invoke-direct {p0}, Lteam/opay/pay/cashio/CashOutActivity;->M()Lteam/opay/pay/cashio/CashViewModel;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    sget v2, Lteam/opay/pay/cashio/CashOutActivity;->p:I

    .line 132
    .line 133
    invoke-virtual {p1, v2}, Lteam/opay/pay/cashio/CashViewModel;->I(I)V

    .line 134
    .line 135
    .line 136
    :cond_3
    :goto_0
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    if-eqz p1, :cond_5

    .line 141
    .line 142
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    if-nez p1, :cond_4

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_4
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    if-eqz p1, :cond_5

    .line 158
    .line 159
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    const-string v1, "/entrance"

    .line 164
    .line 165
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    if-eqz p1, :cond_5

    .line 170
    .line 171
    invoke-direct {p0}, Lteam/opay/pay/cashio/CashOutActivity;->M()Lteam/opay/pay/cashio/CashViewModel;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    sget v1, Lteam/opay/pay/cashio/CashOutActivity;->q:I

    .line 176
    .line 177
    invoke-virtual {p1, v1}, Lteam/opay/pay/cashio/CashViewModel;->I(I)V

    .line 178
    .line 179
    .line 180
    :cond_5
    :goto_1
    sget-object p1, Lteam/opay/pay/cashio/CashOutActivity;->j:Ljava/lang/String;

    .line 181
    .line 182
    invoke-virtual {v0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    if-nez p1, :cond_6

    .line 187
    .line 188
    const-string p1, ""

    .line 189
    .line 190
    :cond_6
    invoke-static {p1}, Loj2;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    const/16 v2, 0xa

    .line 199
    .line 200
    if-ne v1, v2, :cond_7

    .line 201
    .line 202
    sget-object v1, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 203
    .line 204
    invoke-virtual {v1, p1}, Lteam/opay/core/account/AccountInfoManager$Companion;->b(Ljava/lang/String;)Z

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    if-nez v1, :cond_7

    .line 209
    .line 210
    new-instance v1, La42;

    .line 211
    .line 212
    invoke-direct {v1, p0, v0}, La42;-><init>(Lteam/opay/pay/cashio/CashOutActivity;Landroid/net/Uri;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0, p1, v1}, Lteam/opay/pay/cashio/CashOutActivity;->T(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 216
    .line 217
    .line 218
    goto :goto_2

    .line 219
    :cond_7
    invoke-virtual {p0}, Lteam/opay/pay/cashio/CashOutActivity;->P()Lse;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    iget-object p1, p1, Lse;->b:Lteam/opay/core/android/views/OpayActionBar;

    .line 224
    .line 225
    sget v0, Lteam/opay/pay/R$string;->label_cash_out:I

    .line 226
    .line 227
    invoke-static {v0}, Ljmf;->k(I)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-virtual {p1, v0}, Lteam/opay/core/android/views/OpayActionBar;->setTitle(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    sget p1, Lteam/opay/pay/R$id;->fragment_container:I

    .line 235
    .line 236
    new-instance v0, Lteam/opay/pay/cashio/CashOutUnKnownFragment;

    .line 237
    .line 238
    invoke-direct {v0}, Lteam/opay/pay/cashio/CashOutUnKnownFragment;-><init>()V

    .line 239
    .line 240
    .line 241
    invoke-static {p0, p1, v0}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 242
    .line 243
    .line 244
    :goto_2
    return-void
.end method

.method public static final R(Lteam/opay/pay/cashio/CashOutActivity;Landroid/content/Intent;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/cashio/CashOutActivity;->N()Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel;->r()Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lteam/opay/pay/cashio/CashOutActivity;->l:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, v0, p1}, Lteam/opay/pay/cashio/CashOutActivity;->W(Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method

.method public static final S(Lteam/opay/pay/cashio/CashOutActivity;Landroid/net/Uri;Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;)Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/cashio/CashOutActivity;->l:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const-string p1, ""

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0, p2, p1}, Lteam/opay/pay/cashio/CashOutActivity;->W(Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method

.method public static final U(Lteam/opay/pay/cashio/CashOutActivity;Lkotlin/jvm/functions/Function1;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {p2}, Lteam/opay/core/android/arch/ResourceKt;->c(Lteam/opay/core/android/arch/Resource;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lteam/opay/pay/cashio/CashOutActivity;->P()Lse;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    iget-object p0, p0, Lse;->d:Lteam/opay/core/android/views/PulseLoaderView;

    .line 12
    .line 13
    const-string v0, "fragmentLoading"

    .line 14
    .line 15
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lteam/opay/core/api/graphql/VerifyUserResponse;

    .line 28
    .line 29
    if-eqz p0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Lteam/opay/core/api/graphql/VerifyUserResponse;->a()Lteam/opay/core/api/graphql/RecipientUserInfo;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    if-eqz p0, :cond_0

    .line 36
    .line 37
    const-string p2, ""

    .line 38
    .line 39
    invoke-virtual {p0, p2}, Lteam/opay/core/api/graphql/RecipientUserInfo;->mapToContactTransferDispatchData(Ljava/lang/String;)Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 p0, 0x0

    .line 45
    :goto_0
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    return-object p0
.end method

.method public static final V(Lteam/opay/pay/cashio/CashOutActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final X(Lteam/opay/pay/cashio/CashOutActivity;)Lse;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lse;->inflate(Landroid/view/LayoutInflater;)Lse;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public P()Lse;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashio/CashOutActivity;->e:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lse;

    .line 8
    .line 9
    return-object v0
.end method

.method public final T(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/cashio/CashOutActivity;->P()Lse;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lse;->d:Lteam/opay/core/android/views/PulseLoaderView;

    .line 6
    .line 7
    const-string v1, "fragmentLoading"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lteam/opay/pay/cashio/CashOutActivity;->O()Lteam/opay/pay/pin/PinViewModel;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lteam/opay/core/api/graphql/RecipientAccountReq;

    .line 20
    .line 21
    invoke-static {p1}, Loj2;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1}, Loj2;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    sget-object v2, Lteam/opay/core/api/GraphQL$ServiceType;->CASH_OUT:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 30
    .line 31
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const/4 v3, 0x1

    .line 36
    invoke-direct {v1, p1, v3, v2}, Lteam/opay/core/api/graphql/RecipientAccountReq;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lteam/opay/pay/pin/PinViewModel;->w(Lteam/opay/core/api/graphql/RecipientAccountReq;)Landroidx/lifecycle/LiveData;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    new-instance v0, Ld42;

    .line 44
    .line 45
    invoke-direct {v0, p0, p2}, Ld42;-><init>(Lteam/opay/pay/cashio/CashOutActivity;Lkotlin/jvm/functions/Function1;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p1, p0, v0}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final W(Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;Ljava/lang/String;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/pay/cashio/CashOutActivity;->P()Lse;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p1, p1, Lse;->b:Lteam/opay/core/android/views/OpayActionBar;

    .line 8
    .line 9
    sget p2, Lteam/opay/pay/R$string;->label_cash_out:I

    .line 10
    .line 11
    invoke-static {p2}, Ljmf;->k(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p1, p2}, Lteam/opay/core/android/views/OpayActionBar;->setTitle(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget p1, Lteam/opay/pay/R$id;->fragment_container:I

    .line 19
    .line 20
    new-instance p2, Lteam/opay/pay/cashio/CashOutUnKnownFragment;

    .line 21
    .line 22
    invoke-direct {p2}, Lteam/opay/pay/cashio/CashOutUnKnownFragment;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-static {p0, p1, p2}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    if-nez p2, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;->a()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/cashio/CashOutActivity;->P()Lse;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v0, v0, Lse;->b:Lteam/opay/core/android/views/OpayActionBar;

    .line 40
    .line 41
    sget v1, Lteam/opay/pay/R$string;->transfer_to_opay_account:I

    .line 42
    .line 43
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Lteam/opay/core/android/views/OpayActionBar;->setTitle(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    sget v0, Lteam/opay/pay/R$id;->fragment_container:I

    .line 51
    .line 52
    sget-object v1, Lteam/opay/pay/cashio/CashOutKnownFragment;->D:Lteam/opay/pay/cashio/CashOutKnownFragment$Companion;

    .line 53
    .line 54
    if-nez p2, :cond_2

    .line 55
    .line 56
    const-string p2, ""

    .line 57
    .line 58
    :cond_2
    invoke-virtual {v1, p2, p1}, Lteam/opay/pay/cashio/CashOutKnownFragment$Companion;->a(Ljava/lang/String;Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;)Lteam/opay/pay/cashio/CashOutKnownFragment;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {p0, v0, p1}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    return-void
.end method

.method public bridge synthetic getViewBinding()Lxyf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/cashio/CashOutActivity;->P()Lse;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/pay/cashio/Hilt_CashOutActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-static {p1, v0}, Lm8g;->b(Landroid/view/Window;Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "getIntent(...)"

    .line 17
    .line 18
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1}, Lteam/opay/pay/cashio/CashOutActivity;->Q(Landroid/content/Intent;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-direct {p0, p1}, Lteam/opay/pay/cashio/CashOutActivity;->Q(Landroid/content/Intent;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/pay/cashio/CashOutActivity;->P()Lse;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object p1, p1, Lse;->b:Lteam/opay/core/android/views/OpayActionBar;

    .line 9
    .line 10
    new-instance v0, Lb42;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lb42;-><init>(Lteam/opay/pay/cashio/CashOutActivity;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lteam/opay/core/android/views/OpayActionBar;->setBackNavigationListener(Lkotlin/jvm/functions/Function0;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
