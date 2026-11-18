.class public final Lteam/opay/pay/support/SupportBottomSheet;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialog;
.source "SupportBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/support/SupportBottomSheet$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u000eB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\nJ\u000f\u0010\r\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\r\u0010\nR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R#\u0010\u0018\u001a\n \u0013*\u0004\u0018\u00010\u00120\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\u001b\u0010\u001d\u001a\u00020\u00198BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u0015\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001e"
    }
    d2 = {
        "Lteam/opay/pay/support/SupportBottomSheet;",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialog;",
        "Landroid/content/Context;",
        "_context",
        "Lteam/opay/pay/support/SupportBottomSheet$a;",
        "delegate",
        "<init>",
        "(Landroid/content/Context;Lteam/opay/pay/support/SupportBottomSheet$a;)V",
        "",
        "i",
        "()V",
        "n",
        "k",
        "j",
        "a",
        "Landroid/content/Context;",
        "b",
        "Lteam/opay/pay/support/SupportBottomSheet$a;",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "c",
        "Lid8;",
        "m",
        "()Landroid/view/View;",
        "sheetView",
        "Lhod;",
        "d",
        "l",
        "()Lhod;",
        "binding",
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
.field public final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lteam/opay/pay/support/SupportBottomSheet$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lteam/opay/pay/support/SupportBottomSheet$a;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/support/SupportBottomSheet$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "_context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "delegate"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lteam/opay/pay/support/SupportBottomSheet;->a:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p2, p0, Lteam/opay/pay/support/SupportBottomSheet;->b:Lteam/opay/pay/support/SupportBottomSheet$a;

    .line 17
    .line 18
    new-instance p1, Ls8e;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Ls8e;-><init>(Lteam/opay/pay/support/SupportBottomSheet;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lteam/opay/pay/support/SupportBottomSheet;->c:Lid8;

    .line 28
    .line 29
    new-instance p1, Lt8e;

    .line 30
    .line 31
    invoke-direct {p1, p0}, Lt8e;-><init>(Lteam/opay/pay/support/SupportBottomSheet;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lteam/opay/pay/support/SupportBottomSheet;->d:Lid8;

    .line 39
    .line 40
    invoke-virtual {p0}, Lteam/opay/pay/support/SupportBottomSheet;->n()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public static synthetic b(Lteam/opay/pay/support/SupportBottomSheet;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/support/SupportBottomSheet;->o(Lteam/opay/pay/support/SupportBottomSheet;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lteam/opay/pay/support/SupportBottomSheet;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/support/SupportBottomSheet;->s(Lteam/opay/pay/support/SupportBottomSheet;)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lteam/opay/pay/support/SupportBottomSheet;)Lhod;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/support/SupportBottomSheet;->h(Lteam/opay/pay/support/SupportBottomSheet;)Lhod;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Lteam/opay/pay/support/SupportBottomSheet;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/support/SupportBottomSheet;->r(Lteam/opay/pay/support/SupportBottomSheet;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Lteam/opay/pay/support/SupportBottomSheet;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/support/SupportBottomSheet;->q(Lteam/opay/pay/support/SupportBottomSheet;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g(Lteam/opay/pay/support/SupportBottomSheet;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/support/SupportBottomSheet;->p(Lteam/opay/pay/support/SupportBottomSheet;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final h(Lteam/opay/pay/support/SupportBottomSheet;)Lhod;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/support/SupportBottomSheet;->m()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lhod;->bind(Landroid/view/View;)Lhod;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private final i()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lteam/opay/pay/support/SupportBottomSheet;->b:Lteam/opay/pay/support/SupportBottomSheet$a;

    .line 5
    .line 6
    invoke-interface {v0}, Lteam/opay/pay/support/SupportBottomSheet$a;->c()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final o(Lteam/opay/pay/support/SupportBottomSheet;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final p(Lteam/opay/pay/support/SupportBottomSheet;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/support/SupportBottomSheet;->k()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final q(Lteam/opay/pay/support/SupportBottomSheet;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/support/SupportBottomSheet;->j()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final r(Lteam/opay/pay/support/SupportBottomSheet;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/support/SupportBottomSheet;->i()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final s(Lteam/opay/pay/support/SupportBottomSheet;)Landroid/view/View;
    .locals 2

    .line 1
    iget-object p0, p0, Lteam/opay/pay/support/SupportBottomSheet;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget v0, Lteam/opay/pay/R$layout;->sheet_support:I

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method


# virtual methods
.method public final j()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lteam/opay/pay/support/SupportBottomSheet;->b:Lteam/opay/pay/support/SupportBottomSheet$a;

    .line 5
    .line 6
    invoke-interface {v0}, Lteam/opay/pay/support/SupportBottomSheet$a;->a()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final k()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lteam/opay/pay/support/SupportBottomSheet;->b:Lteam/opay/pay/support/SupportBottomSheet$a;

    .line 5
    .line 6
    invoke-interface {v0}, Lteam/opay/pay/support/SupportBottomSheet$a;->b()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final l()Lhod;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/support/SupportBottomSheet;->d:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lhod;

    .line 8
    .line 9
    return-object v0
.end method

.method public final m()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/support/SupportBottomSheet;->c:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 8
    .line 9
    return-object v0
.end method

.method public final n()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/support/SupportBottomSheet;->m()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    sget v0, Lcom/opay/team/olog/R$id;->design_bottom_sheet:I

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/support/SupportBottomSheet;->m()Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "null cannot be cast to non-null type android.view.View"

    .line 29
    .line 30
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    check-cast v0, Landroid/view/View;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "from(...)"

    .line 40
    .line 41
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 v1, 0x3

    .line 45
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lteam/opay/pay/support/SupportBottomSheet;->l()Lhod;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v0, v0, Lhod;->f:Landroid/widget/ImageView;

    .line 53
    .line 54
    new-instance v1, Lu8e;

    .line 55
    .line 56
    invoke-direct {v1, p0}, Lu8e;-><init>(Lteam/opay/pay/support/SupportBottomSheet;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lteam/opay/pay/support/SupportBottomSheet;->l()Lhod;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object v0, v0, Lhod;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 67
    .line 68
    new-instance v1, Lv8e;

    .line 69
    .line 70
    invoke-direct {v1, p0}, Lv8e;-><init>(Lteam/opay/pay/support/SupportBottomSheet;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lteam/opay/pay/support/SupportBottomSheet;->l()Lhod;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iget-object v0, v0, Lhod;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 81
    .line 82
    new-instance v1, Lw8e;

    .line 83
    .line 84
    invoke-direct {v1, p0}, Lw8e;-><init>(Lteam/opay/pay/support/SupportBottomSheet;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lteam/opay/pay/support/SupportBottomSheet;->l()Lhod;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iget-object v0, v0, Lhod;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 95
    .line 96
    new-instance v1, Lx8e;

    .line 97
    .line 98
    invoke-direct {v1, p0}, Lx8e;-><init>(Lteam/opay/pay/support/SupportBottomSheet;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 105
    .line 106
    .line 107
    return-void
.end method
