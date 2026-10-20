.class public final Lteam/opay/pay/onboarding/GooglePhoneGetter$a;
.super Ljava/lang/Object;
.source "GooglePhoneGetter.kt"

# interfaces
.implements Landroidx/lifecycle/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/onboarding/GooglePhoneGetter;->g(Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "team/opay/pay/onboarding/GooglePhoneGetter$a",
        "Landroidx/lifecycle/e;",
        "Lag8;",
        "source",
        "Landroidx/lifecycle/Lifecycle$Event;",
        "event",
        "",
        "e",
        "(Lag8;Landroidx/lifecycle/Lifecycle$Event;)V",
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
.field public final synthetic a:Landroid/widget/EditText;

.field public final synthetic b:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/onboarding/GooglePhoneGetter$a;->a:Landroid/widget/EditText;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/onboarding/GooglePhoneGetter$a;->b:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/onboarding/GooglePhoneGetter$a;->b()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final b()Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "removeOnGlobalFocusChangeListener ON_DESTROY"

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public e(Lag8;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 3

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "event"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 12
    .line 13
    if-ne p2, v0, :cond_0

    .line 14
    .line 15
    sget-object p2, Lxk8;->a:Lxk8;

    .line 16
    .line 17
    new-instance v0, Lyr6;

    .line 18
    .line 19
    invoke-direct {v0}, Lyr6;-><init>()V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-static {p2, v2, v0, v1, v2}, Lxk8;->i(Lxk8;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p2, p0, Lteam/opay/pay/onboarding/GooglePhoneGetter$a;->a:Landroid/widget/EditText;

    .line 28
    .line 29
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    iget-object v0, p0, Lteam/opay/pay/onboarding/GooglePhoneGetter$a;->b:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    .line 34
    .line 35
    invoke-virtual {p2, v0}, Landroid/view/ViewTreeObserver;->removeOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p1}, Lag8;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->d(Lzf8;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method
