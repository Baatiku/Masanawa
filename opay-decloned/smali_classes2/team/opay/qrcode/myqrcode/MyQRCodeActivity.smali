.class public final Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;
.super Lteam/opay/qrcode/myqrcode/Hilt_MyQRCodeActivity;
.source "MyQRCodeActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/qrcode/myqrcode/MyQRCodeActivity$Companion;,
        Lteam/opay/qrcode/myqrcode/MyQRCodeActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 \'2\u00020\u0001:\u0001(B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u0019\u0010\u0008\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0014\u00a2\u0006\u0004\u0008\u0008\u0010\tJ1\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0010\u0010\u000e\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\r0\u000c2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0019\u0010\u0015\u001a\u00020\u00042\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u0003J\u0017\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u0019R\u001b\u0010\"\u001a\u00020\u001d8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!R\u0018\u0010&\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010%\u00a8\u0006)"
    }
    d2 = {
        "Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "",
        "K",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "",
        "requestCode",
        "",
        "",
        "permissions",
        "",
        "grantResults",
        "onRequestPermissionsResult",
        "(I[Ljava/lang/String;[I)V",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "X",
        "(Landroid/graphics/Bitmap;)V",
        "path",
        "U",
        "(Ljava/lang/String;)V",
        "W",
        "saveSuccessfulPath",
        "Y",
        "Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;",
        "e",
        "Lid8;",
        "M",
        "()Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;",
        "myQRCodeViewModel",
        "Lhbc;",
        "f",
        "Lhbc;",
        "binding",
        "g",
        "Companion",
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


# static fields
.field public static final g:Lteam/opay/qrcode/myqrcode/MyQRCodeActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final e:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Lhbc;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;->g:Lteam/opay/qrcode/myqrcode/MyQRCodeActivity$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lteam/opay/qrcode/myqrcode/Hilt_MyQRCodeActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity$special$$inlined$viewModels$default$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 10
    .line 11
    const-class v2, Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;

    .line 12
    .line 13
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    new-instance v3, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity$special$$inlined$viewModels$default$2;

    .line 18
    .line 19
    invoke-direct {v3, p0}, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 20
    .line 21
    .line 22
    new-instance v4, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity$special$$inlined$viewModels$default$3;

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    invoke-direct {v4, v5, p0}, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;->e:Lid8;

    .line 32
    .line 33
    return-void
.end method

.method public static synthetic A(Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;->T(Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B(Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;Lteam/opay/qrcode/bean/MyQRCodeRsp;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;->P(Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;Lteam/opay/qrcode/bean/MyQRCodeRsp;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic C(Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;Lteam/opay/core/android/arch/Status;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;->Q(Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;Lteam/opay/core/android/arch/Status;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic D(Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;->O(Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic E(Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;->S(Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;Landroid/content/DialogInterface;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic F(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;->R(Landroid/content/DialogInterface;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic G(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;->a0(Landroid/content/DialogInterface;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic H(Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;)Lhbc;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;->f:Lhbc;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic I(Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;)Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;->M()Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic J(Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;->U(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final K()V
    .locals 2

    .line 1
    const v0, 0x1020002

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/FrameLayout;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lai9;

    .line 16
    .line 17
    invoke-direct {v1}, Lai9;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Landroidx/core/view/a;->G0(Landroid/view/View;Lhka;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static final L(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
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
    const-string v1, "getInsets(...)"

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
    move-result v2

    .line 28
    invoke-virtual {p1, v2}, Landroidx/core/view/WindowInsetsCompat;->f(I)Lpg7;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget v0, v0, Lpg7;->b:I

    .line 36
    .line 37
    iget v1, v2, Lpg7;->d:I

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-virtual {p0, v2, v0, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 41
    .line 42
    .line 43
    return-object p1
.end method

.method public static final N(Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;->W()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final O(Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;->Y(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object p0
.end method

.method public static final P(Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;Lteam/opay/qrcode/bean/MyQRCodeRsp;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lteam/opay/qrcode/bean/MyQRCodeRsp;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;->f:Lhbc;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, Lhbc;->c:Landroid/widget/TextView;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    sget-object v2, Lbd9;->a:Lbd9;

    .line 21
    .line 22
    invoke-virtual {p1}, Lteam/opay/qrcode/bean/MyQRCodeRsp;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->asMoneyAmount()Lteam/opay/core/android/money/MoneyAmount;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v2, v3}, Lbd9;->a(Lteam/opay/core/android/money/MoneyAmount;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lteam/opay/qrcode/bean/MyQRCodeRsp;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    iget-object v0, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;->f:Lhbc;

    .line 56
    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    iget-object v0, v0, Lhbc;->c:Landroid/widget/TextView;

    .line 60
    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    :cond_1
    iget-object v0, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;->f:Lhbc;

    .line 68
    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    iget-object v0, v0, Lhbc;->f:Landroid/widget/TextView;

    .line 72
    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    sget v1, Lteam/opay/qrcode/R$string;->qrcode_remove_amount:I

    .line 76
    .line 77
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    iget-object v0, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;->f:Lhbc;

    .line 86
    .line 87
    if-eqz v0, :cond_3

    .line 88
    .line 89
    iget-object v0, v0, Lhbc;->c:Landroid/widget/TextView;

    .line 90
    .line 91
    if-eqz v0, :cond_3

    .line 92
    .line 93
    const/16 v1, 0x8

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 96
    .line 97
    .line 98
    :cond_3
    iget-object v0, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;->f:Lhbc;

    .line 99
    .line 100
    if-eqz v0, :cond_4

    .line 101
    .line 102
    iget-object v0, v0, Lhbc;->f:Landroid/widget/TextView;

    .line 103
    .line 104
    if-eqz v0, :cond_4

    .line 105
    .line 106
    sget v1, Lteam/opay/qrcode/R$string;->qrcode_enter_amount:I

    .line 107
    .line 108
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    .line 114
    .line 115
    :cond_4
    :goto_0
    sget-object v0, Ln7c;->a:Ln7c;

    .line 116
    .line 117
    invoke-virtual {p1}, Lteam/opay/qrcode/bean/MyQRCodeRsp;->b()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    const/4 v1, 0x0

    .line 122
    invoke-virtual {v0, p1, v1}, Ln7c;->d(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p0, p1}, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;->X(Landroid/graphics/Bitmap;)V

    .line 127
    .line 128
    .line 129
    iget-object p1, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;->f:Lhbc;

    .line 130
    .line 131
    if-eqz p1, :cond_5

    .line 132
    .line 133
    iget-object p1, p1, Lhbc;->h:Landroid/widget/ImageView;

    .line 134
    .line 135
    if-eqz p1, :cond_5

    .line 136
    .line 137
    sget-object v0, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 138
    .line 139
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager;->s()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    const/4 v1, 0x3

    .line 148
    invoke-static {v1}, Ljmf;->d(I)I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    sget v2, Lteam/opay/pay/R$mipmap;->logo:I

    .line 153
    .line 154
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-static {p1, v0, v1, v2}, Lme7;->A(Landroid/widget/ImageView;Ljava/lang/String;ILjava/lang/Integer;)V

    .line 159
    .line 160
    .line 161
    :cond_5
    iget-object p0, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;->f:Lhbc;

    .line 162
    .line 163
    if-eqz p0, :cond_6

    .line 164
    .line 165
    iget-object p0, p0, Lhbc;->l:Landroid/widget/ProgressBar;

    .line 166
    .line 167
    if-eqz p0, :cond_6

    .line 168
    .line 169
    invoke-static {p0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 170
    .line 171
    .line 172
    :cond_6
    return-void
.end method

.method public static final Q(Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;Lteam/opay/core/android/arch/Status;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget-object v0, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity$a;->a:[I

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    aget p1, v0, p1

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    if-eq p1, v0, :cond_4

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    if-eq p1, v0, :cond_3

    .line 17
    .line 18
    const/4 v0, 0x3

    .line 19
    if-ne p1, v0, :cond_2

    .line 20
    .line 21
    iget-object p1, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;->f:Lhbc;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iget-object p1, p1, Lhbc;->l:Landroid/widget/ProgressBar;

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 33
    .line 34
    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    sget v0, Lteam/opay/qrcode/R$string;->qrcode_error:I

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    sget v0, Lteam/opay/qrcode/R$string;->qrcode_sure:I

    .line 44
    .line 45
    new-instance v1, Lgi9;

    .line 46
    .line 47
    invoke-direct {v1}, Lgi9;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    new-instance v0, Lhi9;

    .line 59
    .line 60
    invoke-direct {v0, p0}, Lhi9;-><init>(Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 68
    .line 69
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 70
    .line 71
    .line 72
    throw p0

    .line 73
    :cond_3
    iget-object p0, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;->f:Lhbc;

    .line 74
    .line 75
    if-eqz p0, :cond_5

    .line 76
    .line 77
    iget-object p0, p0, Lhbc;->l:Landroid/widget/ProgressBar;

    .line 78
    .line 79
    if-eqz p0, :cond_5

    .line 80
    .line 81
    invoke-static {p0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_4
    iget-object p0, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;->f:Lhbc;

    .line 86
    .line 87
    if-eqz p0, :cond_5

    .line 88
    .line 89
    iget-object p0, p0, Lhbc;->l:Landroid/widget/ProgressBar;

    .line 90
    .line 91
    if-eqz p0, :cond_5

    .line 92
    .line 93
    invoke-static {p0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 94
    .line 95
    .line 96
    :cond_5
    :goto_0
    return-void
.end method

.method public static final R(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static final S(Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final T(Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;->M()Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;->w()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lteam/opay/qrcode/bean/MyQRCodeRsp;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lteam/opay/qrcode/bean/MyQRCodeRsp;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    if-nez v0, :cond_1

    .line 24
    .line 25
    new-instance v0, Lteam/opay/qrcode/myqrcode/InputMoneyDialog;

    .line 26
    .line 27
    invoke-direct {v0}, Lteam/opay/qrcode/myqrcode/InputMoneyDialog;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const-string v1, "getSupportFragmentManager(...)"

    .line 35
    .line 36
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v1, "input"

    .line 40
    .line 41
    invoke-virtual {v0, p0, v1}, Lteam/opay/qrcode/myqrcode/InputMoneyDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    invoke-virtual {p0}, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;->M()Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p0}, Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;->s()V

    .line 50
    .line 51
    .line 52
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 53
    .line 54
    return-object p0
.end method

.method public static final V(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onScanComplete "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const/16 p0, 0x20

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string p1, "this"

    .line 27
    .line 28
    invoke-static {p1, p0}, Lt6c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public static final Z(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static final a0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static synthetic u(Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;->N(Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic w(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;->V(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic y(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;->Z(Landroid/content/DialogInterface;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic z(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;->L(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final M()Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;->e:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public final U(Ljava/lang/String;)V
    .locals 2

    .line 1
    filled-new-array {p1}, [Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "image/jpeg"

    .line 6
    .line 7
    filled-new-array {v0}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lfi9;

    .line 12
    .line 13
    invoke-direct {v1}, Lfi9;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {p0, p1, v0, v1}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final W()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;->M()Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;->w()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lteam/opay/qrcode/bean/MyQRCodeRsp;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 19
    .line 20
    const/16 v2, 0x1d

    .line 21
    .line 22
    if-ge v1, v2, :cond_1

    .line 23
    .line 24
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 25
    .line 26
    invoke-static {p0, v1}, Lzq2;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    filled-new-array {v1}, [Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/16 v1, 0x76

    .line 37
    .line 38
    invoke-static {p0, v0, v1}, Landroidx/core/app/a;->g(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    invoke-virtual {p0}, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;->M()Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v1}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    new-instance v5, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity$saveCode$1;

    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    invoke-direct {v5, p0, v0, v1}, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity$saveCode$1;-><init>(Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;Lteam/opay/qrcode/bean/MyQRCodeRsp;Ljr2;)V

    .line 58
    .line 59
    .line 60
    const/4 v6, 0x2

    .line 61
    const/4 v7, 0x0

    .line 62
    const/4 v4, 0x0

    .line 63
    invoke-static/range {v2 .. v7}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final X(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;->f:Lhbc;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, v0, Lhbc;->i:Landroid/widget/ImageView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public final Y(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    sget v1, Lteam/opay/qrcode/R$string;->qrcode_save_success:I

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    sget v2, Lteam/opay/qrcode/R$string;->qrcode_mycode_path:I

    .line 24
    .line 25
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    sget v0, Lteam/opay/qrcode/R$string;->qrcode_sure:I

    .line 44
    .line 45
    new-instance v1, Lii9;

    .line 46
    .line 47
    invoke-direct {v1}, Lii9;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 59
    .line 60
    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    sget v0, Lteam/opay/qrcode/R$string;->qrcode_save_failed:I

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    sget v0, Lteam/opay/qrcode/R$string;->qrcode_sure:I

    .line 70
    .line 71
    new-instance v1, Lji9;

    .line 72
    .line 73
    invoke-direct {v1}, Lji9;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 81
    .line 82
    .line 83
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/qrcode/myqrcode/Hilt_MyQRCodeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/a;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a;->M(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    sget v0, Lteam/opay/pay/R$color;->mint:I

    .line 19
    .line 20
    invoke-static {p0, v0}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Lhbc;->inflate(Landroid/view/LayoutInflater;)Lhbc;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;->f:Lhbc;

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    invoke-virtual {p1}, Lhbc;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move-object p1, v0

    .line 46
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;->K()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;->M()Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;->m()Lteam/opay/core/api/GraphQL$User;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const-string v1, ""

    .line 61
    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lteam/opay/core/api/GraphQL$User;->c()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lteam/opay/core/api/GraphQL$User;->g()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-static {v3}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    const/16 v4, 0x20

    .line 85
    .line 86
    if-eqz v3, :cond_1

    .line 87
    .line 88
    move-object v3, v1

    .line 89
    goto :goto_1

    .line 90
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Lteam/opay/core/api/GraphQL$User;->g()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Lteam/opay/core/api/GraphQL$User;->j()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    iget-object v3, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;->f:Lhbc;

    .line 127
    .line 128
    if-eqz v3, :cond_2

    .line 129
    .line 130
    iget-object v3, v3, Lhbc;->p:Landroid/widget/TextView;

    .line 131
    .line 132
    if-eqz v3, :cond_2

    .line 133
    .line 134
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    .line 136
    .line 137
    :cond_2
    if-eqz p1, :cond_3

    .line 138
    .line 139
    invoke-virtual {p1}, Lteam/opay/core/api/GraphQL$User;->e()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    goto :goto_2

    .line 144
    :cond_3
    move-object v2, v0

    .line 145
    :goto_2
    sget-object v3, Lg9c;->a:Lg9c;

    .line 146
    .line 147
    invoke-virtual {v3}, Lg9c;->e()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    const/4 v5, 0x0

    .line 152
    const/4 v6, 0x2

    .line 153
    invoke-static {v2, v4, v5, v6, v0}, Lkotlin/text/StringsKt;->J(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    if-nez v2, :cond_6

    .line 158
    .line 159
    invoke-virtual {v3, v1}, Lg9c;->g(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    if-eqz p1, :cond_4

    .line 163
    .line 164
    invoke-virtual {p1}, Lteam/opay/core/api/GraphQL$User;->e()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    :cond_4
    if-nez v0, :cond_5

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_5
    move-object v1, v0

    .line 172
    :goto_3
    invoke-virtual {v3, v1}, Lg9c;->h(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    :cond_6
    invoke-virtual {p0}, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;->M()Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-virtual {p1}, Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;->w()Landroidx/lifecycle/MutableLiveData;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    new-instance v0, Lzh9;

    .line 184
    .line 185
    invoke-direct {v0, p0}, Lzh9;-><init>(Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0}, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;->M()Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-virtual {p1}, Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;->r()Landroidx/lifecycle/MutableLiveData;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    new-instance v0, Lbi9;

    .line 200
    .line 201
    invoke-direct {v0, p0}, Lbi9;-><init>(Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0}, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;->M()Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-virtual {p1}, Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;->s()V

    .line 212
    .line 213
    .line 214
    iget-object p1, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;->f:Lhbc;

    .line 215
    .line 216
    if-eqz p1, :cond_7

    .line 217
    .line 218
    iget-object p1, p1, Lhbc;->f:Landroid/widget/TextView;

    .line 219
    .line 220
    if-eqz p1, :cond_7

    .line 221
    .line 222
    new-instance v0, Lci9;

    .line 223
    .line 224
    invoke-direct {v0, p0}, Lci9;-><init>(Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;)V

    .line 225
    .line 226
    .line 227
    invoke-static {p1, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 228
    .line 229
    .line 230
    :cond_7
    iget-object p1, p0, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;->f:Lhbc;

    .line 231
    .line 232
    if-eqz p1, :cond_8

    .line 233
    .line 234
    iget-object p1, p1, Lhbc;->m:Landroid/widget/TextView;

    .line 235
    .line 236
    if-eqz p1, :cond_8

    .line 237
    .line 238
    new-instance v0, Ldi9;

    .line 239
    .line 240
    invoke-direct {v0, p0}, Ldi9;-><init>(Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;)V

    .line 241
    .line 242
    .line 243
    invoke-static {p1, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 244
    .line 245
    .line 246
    :cond_8
    invoke-virtual {p0}, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;->M()Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    invoke-virtual {p1}, Lteam/opay/qrcode/myqrcode/MyQRCodeViewModel;->x()Landroidx/lifecycle/MutableLiveData;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    new-instance v0, Lei9;

    .line 255
    .line 256
    invoke-direct {v0, p0}, Lei9;-><init>(Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;)V

    .line 257
    .line 258
    .line 259
    new-instance v1, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity$b;

    .line 260
    .line 261
    invoke-direct {v1, v0}, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 265
    .line 266
    .line 267
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p2    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "permissions"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "grantResults"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 12
    .line 13
    .line 14
    const/16 p2, 0x76

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    if-ne p1, p2, :cond_1

    .line 18
    .line 19
    array-length p1, p3

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    :goto_0
    if-nez p1, :cond_1

    .line 26
    .line 27
    aget p1, p3, v0

    .line 28
    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Lteam/opay/qrcode/myqrcode/MyQRCodeActivity;->W()V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    sget p1, Lteam/opay/qrcode/R$string;->qrcode_save_qr_permission_denied:I

    .line 36
    .line 37
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 42
    .line 43
    .line 44
    :goto_1
    return-void
.end method
