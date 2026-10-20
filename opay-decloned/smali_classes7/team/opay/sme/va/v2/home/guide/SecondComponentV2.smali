.class public final Lteam/opay/sme/va/v2/home/guide/SecondComponentV2;
.super Ljava/lang/Object;
.source "SecondComponentV2.kt"

# interfaces
.implements Lteam/opay/business/guideview/b;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000cJ\u000f\u0010\u000f\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u000cR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u000cR0\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0012j\u0004\u0018\u0001`\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001b"
    }
    d2 = {
        "Lteam/opay/sme/va/v2/home/guide/SecondComponentV2;",
        "Lteam/opay/business/guideview/b;",
        "",
        "merchantLevel",
        "<init>",
        "(I)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/View;",
        "b",
        "(Landroid/view/LayoutInflater;)Landroid/view/View;",
        "a",
        "()I",
        "c",
        "d",
        "e",
        "I",
        "getMerchantLevel",
        "Lkotlin/Function0;",
        "",
        "Lteam/opay/core/common/android/Block;",
        "Lkotlin/jvm/functions/Function0;",
        "getCallback",
        "()Lkotlin/jvm/functions/Function0;",
        "h",
        "(Lkotlin/jvm/functions/Function0;)V",
        "callback",
        "sme-va_release"
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
.field public final a:I

.field public b:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lteam/opay/sme/va/v2/home/guide/SecondComponentV2;->a:I

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic f(Lteam/opay/sme/va/v2/home/guide/SecondComponentV2;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/sme/va/v2/home/guide/SecondComponentV2;->g(Lteam/opay/sme/va/v2/home/guide/SecondComponentV2;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final g(Lteam/opay/sme/va/v2/home/guide/SecondComponentV2;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/sme/va/v2/home/guide/SecondComponentV2;->b:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    return v0
.end method

.method public b(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "inflater"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {p1, v0, v1}, Ldzd;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ldzd;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v0, "inflate(...)"

    .line 13
    .line 14
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget v0, p0, Lteam/opay/sme/va/v2/home/guide/SecondComponentV2;->a:I

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    iget-object v0, p1, Ldzd;->d:Landroidx/appcompat/widget/AppCompatImageView;

    .line 23
    .line 24
    sget v1, Lteam/opay/sme/va/R$drawable;->sme_va_icon_guide_right_level2:I

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p1, Ldzd;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 30
    .line 31
    sget v1, Lteam/opay/sme/va/R$drawable;->sme_va_ripple_ceb37e_20:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object v0, p1, Ldzd;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 37
    .line 38
    const-string v1, "btnNext"

    .line 39
    .line 40
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    new-instance v1, Lh6d;

    .line 44
    .line 45
    invoke-direct {v1, p0}, Lh6d;-><init>(Lteam/opay/sme/va/v2/home/guide/SecondComponentV2;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v1}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ldzd;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const-string v0, "getRoot(...)"

    .line 56
    .line 57
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-object p1
.end method

.method public c()I
    .locals 1

    .line 1
    const/16 v0, 0x30

    .line 2
    .line 3
    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final h(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/va/v2/home/guide/SecondComponentV2;->b:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method
