.class public final Lteam/opay/pay/android/views/SearchView$a;
.super Lteam/opay/core/android/views/SafeDelayedTextWatcher;
.source "SearchView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/android/views/SearchView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0002\u0010\u0008\n\u0002\u0008\u0008*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J1\u0010\u000c\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00072\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ1\u0010\u000f\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00072\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\r\u00a8\u0006\u0010"
    }
    d2 = {
        "team/opay/pay/android/views/SearchView$a",
        "Lteam/opay/core/android/views/SafeDelayedTextWatcher;",
        "Landroid/text/Editable;",
        "s",
        "",
        "b",
        "(Landroid/text/Editable;)V",
        "",
        "",
        "start",
        "count",
        "after",
        "beforeTextChanged",
        "(Ljava/lang/CharSequence;III)V",
        "before",
        "onTextChanged",
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
.field public final synthetic e:Lteam/opay/pay/android/views/SearchView;


# direct methods
.method public constructor <init>(Lag8;Lteam/opay/pay/android/views/SearchView;)V
    .locals 2

    .line 1
    iput-object p2, p0, Lteam/opay/pay/android/views/SearchView$a;->e:Lteam/opay/pay/android/views/SearchView;

    .line 2
    .line 3
    const-wide/16 v0, 0xc8

    .line 4
    .line 5
    invoke-direct {p0, p1, v0, v1}, Lteam/opay/core/android/views/SafeDelayedTextWatcher;-><init>(Lag8;J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public b(Landroid/text/Editable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/views/SearchView$a;->e:Lteam/opay/pay/android/views/SearchView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/android/views/SearchView;->getBinding()Lvj7;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lvj7;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 8
    .line 9
    const-string v1, "iconClear"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v1}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    xor-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    invoke-static {v0, v1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lteam/opay/pay/android/views/SearchView$a;->e:Lteam/opay/pay/android/views/SearchView;

    .line 28
    .line 29
    invoke-virtual {v0}, Lteam/opay/pay/android/views/SearchView;->getAfterTextChangeListener()Lkotlin/jvm/functions/Function1;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method
