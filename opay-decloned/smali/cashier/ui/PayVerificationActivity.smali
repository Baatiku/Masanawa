.class public final Lcashier/ui/PayVerificationActivity;
.super Lcashier/ui/Hilt_PayVerificationActivity;
.source "PayVerificationActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcashier/ui/PayVerificationActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0001\u0018\u0000 (2\u00020\u0001:\u0001)B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0017\u00a2\u0006\u0004\u0008\t\u0010\u0003J\u0017\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u0003J\u0017\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0019\u0010\u0015\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u0010\u001a\u00020\u000f8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u001c\u001a\u00020\u00198\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u001b\u0010\"\u001a\u00020\u001d8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!R\u001d\u0010\'\u001a\u0004\u0018\u00010#8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008$\u0010\u001f\u001a\u0004\u0008%\u0010&\u00a8\u0006*"
    }
    d2 = {
        "Lcashier/ui/PayVerificationActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onBackPressed",
        "Lcashier/util/PayVerifyEvent;",
        "event",
        "F",
        "(Lcashier/util/PayVerifyEvent;)V",
        "K",
        "Lcashier/ui/VerificationConfig;",
        "config",
        "D",
        "(Lcashier/ui/VerificationConfig;)V",
        "",
        "cancel",
        "H",
        "(Z)V",
        "d",
        "Lcashier/ui/VerificationConfig;",
        "Lv7b;",
        "e",
        "Lv7b;",
        "binding",
        "Lcashier/model/VerificationViewModel;",
        "f",
        "Lid8;",
        "E",
        "()Lcashier/model/VerificationViewModel;",
        "viewModel",
        "Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;",
        "g",
        "getGenerator",
        "()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;",
        "generator",
        "h",
        "Companion",
        "cashier_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final h:Lcashier/ui/PayVerificationActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public d:Lcashier/ui/VerificationConfig;

.field public e:Lv7b;

.field public final f:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcashier/ui/PayVerificationActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcashier/ui/PayVerificationActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcashier/ui/PayVerificationActivity;->h:Lcashier/ui/PayVerificationActivity$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcashier/ui/Hilt_PayVerificationActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcashier/ui/PayVerificationActivity$special$$inlined$viewModels$default$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcashier/ui/PayVerificationActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 10
    .line 11
    const-class v2, Lcashier/model/VerificationViewModel;

    .line 12
    .line 13
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    new-instance v3, Lcashier/ui/PayVerificationActivity$special$$inlined$viewModels$default$2;

    .line 18
    .line 19
    invoke-direct {v3, p0}, Lcashier/ui/PayVerificationActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 20
    .line 21
    .line 22
    new-instance v4, Lcashier/ui/PayVerificationActivity$special$$inlined$viewModels$default$3;

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    invoke-direct {v4, v5, p0}, Lcashier/ui/PayVerificationActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lcashier/ui/PayVerificationActivity;->f:Lid8;

    .line 32
    .line 33
    sget-object v0, Lcashier/ui/PayVerificationActivity$generator$2;->INSTANCE:Lcashier/ui/PayVerificationActivity$generator$2;

    .line 34
    .line 35
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lcashier/ui/PayVerificationActivity;->g:Lid8;

    .line 40
    .line 41
    return-void
.end method

.method public static final synthetic A(Lcashier/ui/PayVerificationActivity;Lcashier/util/PayVerifyEvent;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcashier/ui/PayVerificationActivity;->F(Lcashier/util/PayVerifyEvent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic B(Lcashier/ui/PayVerificationActivity;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcashier/ui/PayVerificationActivity;->H(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic C(Lcashier/ui/PayVerificationActivity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcashier/ui/PayVerificationActivity;->K()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final G(Lcashier/ui/PayVerificationActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x6

    .line 7
    if-ne p2, p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcashier/ui/PayVerificationActivity;->K()V

    .line 10
    .line 11
    .line 12
    :cond_0
    const/4 p0, 0x1

    .line 13
    return p0
.end method

.method public static synthetic I(Lcashier/ui/PayVerificationActivity;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcashier/ui/PayVerificationActivity;->H(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final J(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "insets"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$l;->e()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->f(I)Lpg7;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "insets.getInsets(WindowI\u2026Compat.Type.statusBars())"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$l;->d()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {p1, v1}, Landroidx/core/view/WindowInsetsCompat;->f(I)Lpg7;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "insets.getInsets(WindowI\u2026at.Type.navigationBars())"

    .line 33
    .line 34
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget v0, v0, Lpg7;->b:I

    .line 38
    .line 39
    iget v1, v1, Lpg7;->d:I

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-virtual {p0, v2, v0, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 43
    .line 44
    .line 45
    return-object p1
.end method

.method private final getGenerator()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcashier/ui/PayVerificationActivity;->g:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic u(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcashier/ui/PayVerificationActivity;->J(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic w(Lcashier/ui/PayVerificationActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcashier/ui/PayVerificationActivity;->G(Lcashier/ui/PayVerificationActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic y(Lcashier/ui/PayVerificationActivity;)Lv7b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcashier/ui/PayVerificationActivity;->e:Lv7b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic z(Lcashier/ui/PayVerificationActivity;)Lcashier/ui/VerificationConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lcashier/ui/PayVerificationActivity;->d:Lcashier/ui/VerificationConfig;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final D(Lcashier/ui/VerificationConfig;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcashier/ui/PayVerificationActivity;->e:Lv7b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "binding"

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    iget-object v0, v0, Lv7b;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcashier/ui/VerificationConfig;->getTitle()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-static {v3}, Lcashier/util/UtilsKt;->b(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcashier/ui/PayVerificationActivity;->e:Lv7b;

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    move-object v0, v1

    .line 33
    :cond_1
    iget-object v0, v0, Lv7b;->c:Landroid/widget/TextView;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcashier/ui/VerificationConfig;->getDescription()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-static {v3}, Lcashier/util/UtilsKt;->b(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcashier/ui/PayVerificationActivity;->e:Lv7b;

    .line 47
    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    move-object v0, v1

    .line 54
    :cond_2
    iget-object v0, v0, Lv7b;->i:Landroid/widget/TextView;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcashier/ui/VerificationConfig;->getLabel()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    invoke-static {v3}, Lcashier/util/UtilsKt;->b(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcashier/ui/PayVerificationActivity;->e:Lv7b;

    .line 68
    .line 69
    if-nez v0, :cond_3

    .line 70
    .line 71
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    move-object v1, v0

    .line 76
    :goto_0
    iget-object v0, v1, Lv7b;->f:Landroidx/appcompat/widget/AppCompatEditText;

    .line 77
    .line 78
    invoke-virtual {p1}, Lcashier/ui/VerificationConfig;->getHint()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    invoke-static {p1}, Lcashier/util/UtilsKt;->b(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public final E()Lcashier/model/VerificationViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcashier/ui/PayVerificationActivity;->f:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcashier/model/VerificationViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public final F(Lcashier/util/PayVerifyEvent;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcashier/util/PayVerifyEvent;->a()Lcashier/ui/VerificationConfig;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcashier/ui/PayVerificationActivity;->d:Lcashier/ui/VerificationConfig;

    .line 6
    .line 7
    const-string v0, "config"

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    move-object p1, v1

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcashier/ui/VerificationConfig;->getPaymentApi()Lcashier/net/IPaymentApi;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    invoke-virtual {p0}, Lcashier/ui/PayVerificationActivity;->E()Lcashier/model/VerificationViewModel;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object v2, p0, Lcashier/ui/PayVerificationActivity;->d:Lcashier/ui/VerificationConfig;

    .line 31
    .line 32
    if-nez v2, :cond_2

    .line 33
    .line 34
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    move-object v2, v1

    .line 38
    :cond_2
    invoke-virtual {v2}, Lcashier/ui/VerificationConfig;->getPaymentApi()Lcashier/net/IPaymentApi;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {p1, v2}, Lcashier/model/VerificationViewModel;->u(Lcashier/net/IPaymentApi;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcashier/ui/PayVerificationActivity;->d:Lcashier/ui/VerificationConfig;

    .line 46
    .line 47
    if-nez p1, :cond_3

    .line 48
    .line 49
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    move-object p1, v1

    .line 53
    :cond_3
    invoke-virtual {p0, p1}, Lcashier/ui/PayVerificationActivity;->D(Lcashier/ui/VerificationConfig;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcashier/ui/PayVerificationActivity;->e:Lv7b;

    .line 57
    .line 58
    const-string v0, "binding"

    .line 59
    .line 60
    if-nez p1, :cond_4

    .line 61
    .line 62
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    move-object p1, v1

    .line 66
    :cond_4
    iget-object p1, p1, Lv7b;->f:Landroidx/appcompat/widget/AppCompatEditText;

    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 69
    .line 70
    .line 71
    sget p1, Lteam/opay/pay/cashier/R$id;->loading_progress:I

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p0}, Lcashier/ui/PayVerificationActivity;->E()Lcashier/model/VerificationViewModel;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v2}, Lcashier/model/VerificationViewModel;->r()Landroidx/lifecycle/MutableLiveData;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    new-instance v3, Lcashier/ui/PayVerificationActivity$initConfig$1;

    .line 86
    .line 87
    invoke-direct {v3, p1}, Lcashier/ui/PayVerificationActivity$initConfig$1;-><init>(Landroid/view/View;)V

    .line 88
    .line 89
    .line 90
    new-instance p1, Lcashier/ui/PayVerificationActivity$b;

    .line 91
    .line 92
    invoke-direct {p1, v3}, Lcashier/ui/PayVerificationActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, p0, p1}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lcashier/ui/PayVerificationActivity;->E()Lcashier/model/VerificationViewModel;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1}, Lcashier/model/VerificationViewModel;->t()Landroidx/lifecycle/MutableLiveData;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    new-instance v2, Lcashier/ui/PayVerificationActivity$initConfig$2;

    .line 107
    .line 108
    invoke-direct {v2, p0}, Lcashier/ui/PayVerificationActivity$initConfig$2;-><init>(Lcashier/ui/PayVerificationActivity;)V

    .line 109
    .line 110
    .line 111
    new-instance v3, Lcashier/ui/PayVerificationActivity$b;

    .line 112
    .line 113
    invoke-direct {v3, v2}, Lcashier/ui/PayVerificationActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Lcashier/ui/PayVerificationActivity;->e:Lv7b;

    .line 120
    .line 121
    if-nez p1, :cond_5

    .line 122
    .line 123
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    move-object p1, v1

    .line 127
    :cond_5
    iget-object p1, p1, Lv7b;->f:Landroidx/appcompat/widget/AppCompatEditText;

    .line 128
    .line 129
    new-instance v2, Lncb;

    .line 130
    .line 131
    invoke-direct {v2, p0}, Lncb;-><init>(Lcashier/ui/PayVerificationActivity;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 135
    .line 136
    .line 137
    iget-object p1, p0, Lcashier/ui/PayVerificationActivity;->e:Lv7b;

    .line 138
    .line 139
    if-nez p1, :cond_6

    .line 140
    .line 141
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    move-object p1, v1

    .line 145
    :cond_6
    iget-object p1, p1, Lv7b;->e:Landroidx/appcompat/widget/AppCompatImageView;

    .line 146
    .line 147
    const-string v2, "binding.iconBack"

    .line 148
    .line 149
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    new-instance v2, Lcashier/ui/PayVerificationActivity$initConfig$4;

    .line 153
    .line 154
    invoke-direct {v2, p0}, Lcashier/ui/PayVerificationActivity$initConfig$4;-><init>(Lcashier/ui/PayVerificationActivity;)V

    .line 155
    .line 156
    .line 157
    invoke-static {p1, v2}, Ld0g;->o(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 158
    .line 159
    .line 160
    iget-object p1, p0, Lcashier/ui/PayVerificationActivity;->e:Lv7b;

    .line 161
    .line 162
    if-nez p1, :cond_7

    .line 163
    .line 164
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    move-object p1, v1

    .line 168
    :cond_7
    iget-object p1, p1, Lv7b;->f:Landroidx/appcompat/widget/AppCompatEditText;

    .line 169
    .line 170
    const-string v2, "binding.input"

    .line 171
    .line 172
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    new-instance v2, Lcashier/ui/PayVerificationActivity$initConfig$$inlined$addTextChangedListener$default$1;

    .line 176
    .line 177
    invoke-direct {v2, p0}, Lcashier/ui/PayVerificationActivity$initConfig$$inlined$addTextChangedListener$default$1;-><init>(Lcashier/ui/PayVerificationActivity;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 181
    .line 182
    .line 183
    iget-object p1, p0, Lcashier/ui/PayVerificationActivity;->e:Lv7b;

    .line 184
    .line 185
    if-nez p1, :cond_8

    .line 186
    .line 187
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    goto :goto_0

    .line 191
    :cond_8
    move-object v1, p1

    .line 192
    :goto_0
    iget-object p1, v1, Lv7b;->l:Lcom/google/android/material/button/MaterialButton;

    .line 193
    .line 194
    const-string v0, "binding.submitButton"

    .line 195
    .line 196
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    new-instance v0, Lcashier/ui/PayVerificationActivity$initConfig$6;

    .line 200
    .line 201
    invoke-direct {v0, p0}, Lcashier/ui/PayVerificationActivity$initConfig$6;-><init>(Lcashier/ui/PayVerificationActivity;)V

    .line 202
    .line 203
    .line 204
    invoke-static {p1, v0}, Ld0g;->o(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 205
    .line 206
    .line 207
    return-void
.end method

.method public final H(Z)V
    .locals 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcashier/ui/PayVerificationActivity;->d:Lcashier/ui/VerificationConfig;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    const-string v2, "config"

    .line 17
    .line 18
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    move-object v2, v3

    .line 22
    :cond_0
    invoke-virtual {v2}, Lcashier/ui/VerificationConfig;->getType()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const-string v4, "type"

    .line 27
    .line 28
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    const-string p1, ""

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    iget-object p1, p0, Lcashier/ui/PayVerificationActivity;->e:Lv7b;

    .line 37
    .line 38
    if-nez p1, :cond_2

    .line 39
    .line 40
    const-string p1, "binding"

    .line 41
    .line 42
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    move-object v3, p1

    .line 47
    :goto_0
    iget-object p1, v3, Lv7b;->f:Landroidx/appcompat/widget/AppCompatEditText;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    :goto_1
    const-string v2, "input"

    .line 58
    .line 59
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    .line 61
    .line 62
    const-string p1, "data"

    .line 63
    .line 64
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    const/4 p1, -0x1

    .line 72
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final K()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcashier/ui/PayVerificationActivity;->d:Lcashier/ui/VerificationConfig;

    .line 2
    .line 3
    const-string v1, "config"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v2

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcashier/ui/VerificationConfig;->getType()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    sparse-switch v3, :sswitch_data_0

    .line 21
    .line 22
    .line 23
    goto/16 :goto_1

    .line 24
    .line 25
    :sswitch_0
    const-string v3, "phone"

    .line 26
    .line 27
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    goto/16 :goto_1

    .line 34
    .line 35
    :sswitch_1
    const-string v3, "pin"

    .line 36
    .line 37
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :sswitch_2
    const-string v3, "otp"

    .line 45
    .line 46
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {p0}, Lcashier/ui/PayVerificationActivity;->E()Lcashier/model/VerificationViewModel;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    new-instance v11, Lcashier/model/TopUpInput;

    .line 58
    .line 59
    iget-object v3, p0, Lcashier/ui/PayVerificationActivity;->d:Lcashier/ui/VerificationConfig;

    .line 60
    .line 61
    if-nez v3, :cond_2

    .line 62
    .line 63
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    move-object v3, v2

    .line 67
    :cond_2
    invoke-virtual {v3}, Lcashier/ui/VerificationConfig;->getOrderNo()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    iget-object v3, p0, Lcashier/ui/PayVerificationActivity;->d:Lcashier/ui/VerificationConfig;

    .line 72
    .line 73
    if-nez v3, :cond_3

    .line 74
    .line 75
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    move-object v3, v2

    .line 79
    :cond_3
    invoke-virtual {v3}, Lcashier/ui/VerificationConfig;->getPayChannel()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    iget-object v3, p0, Lcashier/ui/PayVerificationActivity;->e:Lv7b;

    .line 84
    .line 85
    if-nez v3, :cond_4

    .line 86
    .line 87
    const-string v3, "binding"

    .line 88
    .line 89
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    move-object v3, v2

    .line 93
    :cond_4
    iget-object v3, v3, Lv7b;->f:Landroidx/appcompat/widget/AppCompatEditText;

    .line 94
    .line 95
    invoke-virtual {v3}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    iget-object v3, p0, Lcashier/ui/PayVerificationActivity;->d:Lcashier/ui/VerificationConfig;

    .line 104
    .line 105
    if-nez v3, :cond_5

    .line 106
    .line 107
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_5
    move-object v2, v3

    .line 112
    :goto_0
    invoke-virtual {v2}, Lcashier/ui/VerificationConfig;->getType()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    const/16 v9, 0x8

    .line 117
    .line 118
    const/4 v10, 0x0

    .line 119
    const/4 v7, 0x0

    .line 120
    move-object v3, v11

    .line 121
    invoke-direct/range {v3 .. v10}, Lcashier/model/TopUpInput;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, p0, v11}, Lcashier/model/VerificationViewModel;->v(Lag8;Lcashier/model/TopUpInput;)V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :sswitch_3
    const-string v1, "cvv"

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-nez v0, :cond_6

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_6
    const/4 v0, 0x0

    .line 138
    const/4 v1, 0x1

    .line 139
    invoke-static {p0, v0, v1, v2}, Lcashier/ui/PayVerificationActivity;->I(Lcashier/ui/PayVerificationActivity;ZILjava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    :goto_1
    return-void

    .line 143
    :sswitch_data_0
    .sparse-switch
        0x18263 -> :sswitch_3
        0x1af2b -> :sswitch_2
        0x1b195 -> :sswitch_1
        0x65b3d6e -> :sswitch_0
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcashier/ui/PayVerificationActivity;->E()Lcashier/model/VerificationViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcashier/model/VerificationViewModel;->s()Lcashier/net/IPaymentApi;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v1, Lcashier/ui/PayVerificationActivity$onBackPressed$1;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcashier/ui/PayVerificationActivity$onBackPressed$1;-><init>(Lcashier/ui/PayVerificationActivity;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, p0, v1}, Lcashier/net/IPaymentApi;->onPayVerifyBack(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function0;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lcashier/ui/PayVerificationActivity;->H(Z)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Lteam/opay/pay/cashier/R$color;->pay_status_bar_dark:I

    .line 6
    .line 7
    invoke-static {v0, v1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sget v2, Lteam/opay/pay/cashier/R$color;->pay_status_bar_light:I

    .line 16
    .line 17
    invoke-static {v1, v2}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-direct {p0}, Lcashier/ui/PayVerificationActivity;->getGenerator()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-interface {v2}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->isDark()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const/4 v3, 0x1

    .line 32
    if-ne v2, v3, :cond_0

    .line 33
    .line 34
    sget-object v1, Landroidx/activity/SystemBarStyle;->e:Landroidx/activity/SystemBarStyle$Companion;

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Landroidx/activity/SystemBarStyle$Companion;->c(I)Landroidx/activity/SystemBarStyle;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    sget-object v0, Landroidx/activity/SystemBarStyle;->e:Landroidx/activity/SystemBarStyle$Companion;

    .line 42
    .line 43
    invoke-virtual {v0, v1, v1}, Landroidx/activity/SystemBarStyle$Companion;->d(II)Landroidx/activity/SystemBarStyle;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :goto_0
    invoke-static {p0, v0, v0}, Landroidx/activity/a;->a(Landroidx/activity/ComponentActivity;Landroidx/activity/SystemBarStyle;Landroidx/activity/SystemBarStyle;)V

    .line 48
    .line 49
    .line 50
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p1}, Lv7b;->inflate(Landroid/view/LayoutInflater;)Lv7b;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const-string v0, "inflate(layoutInflater)"

    .line 62
    .line 63
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iput-object p1, p0, Lcashier/ui/PayVerificationActivity;->e:Lv7b;

    .line 67
    .line 68
    const/4 v0, 0x0

    .line 69
    const-string v1, "binding"

    .line 70
    .line 71
    if-nez p1, :cond_1

    .line 72
    .line 73
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    move-object p1, v0

    .line 77
    :cond_1
    invoke-virtual {p1}, Lv7b;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 82
    .line 83
    .line 84
    new-instance v2, Lcashier/util/PinBoardHelper;

    .line 85
    .line 86
    iget-object p1, p0, Lcashier/ui/PayVerificationActivity;->e:Lv7b;

    .line 87
    .line 88
    if-nez p1, :cond_2

    .line 89
    .line 90
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    move-object p1, v0

    .line 94
    :cond_2
    iget-object v3, p1, Lv7b;->h:Landroid/inputmethodservice/KeyboardView;

    .line 95
    .line 96
    const-string p1, "binding.keyBoardView"

    .line 97
    .line 98
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lcashier/ui/PayVerificationActivity;->e:Lv7b;

    .line 102
    .line 103
    if-nez p1, :cond_3

    .line 104
    .line 105
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_3
    move-object v0, p1

    .line 110
    :goto_1
    iget-object v4, v0, Lv7b;->f:Landroidx/appcompat/widget/AppCompatEditText;

    .line 111
    .line 112
    const-string p1, "binding.input"

    .line 113
    .line 114
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    const/16 v9, 0x3c

    .line 118
    .line 119
    const/4 v10, 0x0

    .line 120
    const/4 v5, 0x0

    .line 121
    const/4 v6, 0x0

    .line 122
    const/4 v7, 0x0

    .line 123
    const/4 v8, 0x0

    .line 124
    invoke-direct/range {v2 .. v10}, Lcashier/util/PinBoardHelper;-><init>(Landroid/inputmethodservice/KeyboardView;Landroid/widget/EditText;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 125
    .line 126
    .line 127
    sget-object p1, Lcashier/util/CashierBus;->a:Lcashier/util/CashierBus;

    .line 128
    .line 129
    new-instance v0, Lcashier/ui/PayVerificationActivity$a;

    .line 130
    .line 131
    invoke-direct {v0, p0}, Lcashier/ui/PayVerificationActivity$a;-><init>(Lcashier/ui/PayVerificationActivity;)V

    .line 132
    .line 133
    .line 134
    const-string v1, "pay_verify_data_key"

    .line 135
    .line 136
    invoke-virtual {p1, p0, v1, v0}, Lcashier/util/CashierBus;->c(Lag8;Ljava/lang/Object;La66;)V

    .line 137
    .line 138
    .line 139
    const p1, 0x1020002

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    check-cast p1, Landroid/widget/FrameLayout;

    .line 147
    .line 148
    const/4 v0, 0x0

    .line 149
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    new-instance v0, Lmcb;

    .line 154
    .line 155
    invoke-direct {v0}, Lmcb;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-static {p1, v0}, Landroidx/core/view/a;->G0(Landroid/view/View;Lhka;)V

    .line 159
    .line 160
    .line 161
    return-void
.end method
