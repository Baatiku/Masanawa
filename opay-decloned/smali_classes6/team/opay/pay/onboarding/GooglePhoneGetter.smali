.class public final Lteam/opay/pay/onboarding/GooglePhoneGetter;
.super Ljava/lang/Object;
.source "GooglePhoneGetter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0014\u0010\u0008\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0015\u0010\r\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0010JG\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00042.\u0010\u0015\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00140\u0013\"\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0014H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\"\u0010\u0008\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u00070\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR \u0010\"\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u001f\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0014\u0010&\u001a\u00020#8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008$\u0010%\u00a8\u0006\'"
    }
    d2 = {
        "Lteam/opay/pay/onboarding/GooglePhoneGetter;",
        "",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "",
        "page",
        "Lkotlin/Function1;",
        "",
        "block",
        "<init>",
        "(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V",
        "Landroid/widget/EditText;",
        "editText",
        "g",
        "(Landroid/widget/EditText;)V",
        "o",
        "()V",
        "k",
        "action",
        "",
        "Lkotlin/Pair;",
        "params",
        "j",
        "(Ljava/lang/String;[Lkotlin/Pair;)V",
        "a",
        "Landroidx/fragment/app/Fragment;",
        "b",
        "Ljava/lang/String;",
        "c",
        "Lkotlin/jvm/functions/Function1;",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "Landroidx/activity/result/IntentSenderRequest;",
        "d",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "phoneNumberHintLauncher",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "e",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "shouldReq",
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
.field public final a:Landroidx/fragment/app/Fragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroidx/activity/result/IntentSenderRequest;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "fragment"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "page"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "block"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lteam/opay/pay/onboarding/GooglePhoneGetter;->a:Landroidx/fragment/app/Fragment;

    .line 20
    .line 21
    iput-object p2, p0, Lteam/opay/pay/onboarding/GooglePhoneGetter;->b:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p3, p0, Lteam/opay/pay/onboarding/GooglePhoneGetter;->c:Lkotlin/jvm/functions/Function1;

    .line 24
    .line 25
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    const/4 p2, 0x1

    .line 28
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lteam/opay/pay/onboarding/GooglePhoneGetter;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    .line 33
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/GooglePhoneGetter;->o()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/onboarding/GooglePhoneGetter;->m(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Landroid/widget/EditText;Lteam/opay/pay/onboarding/GooglePhoneGetter;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/onboarding/GooglePhoneGetter;->i(Landroid/widget/EditText;Lteam/opay/pay/onboarding/GooglePhoneGetter;Landroid/view/View;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Landroid/widget/EditText;Lteam/opay/pay/onboarding/GooglePhoneGetter;Landroid/text/Editable;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/onboarding/GooglePhoneGetter;->h(Landroid/widget/EditText;Lteam/opay/pay/onboarding/GooglePhoneGetter;Landroid/text/Editable;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lteam/opay/pay/onboarding/GooglePhoneGetter;Landroid/app/PendingIntent;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/onboarding/GooglePhoneGetter;->l(Lteam/opay/pay/onboarding/GooglePhoneGetter;Landroid/app/PendingIntent;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Lteam/opay/pay/onboarding/GooglePhoneGetter;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/onboarding/GooglePhoneGetter;->n(Lteam/opay/pay/onboarding/GooglePhoneGetter;Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Lteam/opay/pay/onboarding/GooglePhoneGetter;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/onboarding/GooglePhoneGetter;->p(Lteam/opay/pay/onboarding/GooglePhoneGetter;Landroidx/activity/result/ActivityResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final h(Landroid/widget/EditText;Lteam/opay/pay/onboarding/GooglePhoneGetter;Landroid/text/Editable;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_1

    .line 12
    .line 13
    :cond_0
    invoke-virtual {p1}, Lteam/opay/pay/onboarding/GooglePhoneGetter;->k()V

    .line 14
    .line 15
    .line 16
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0
.end method

.method public static final i(Landroid/widget/EditText;Lteam/opay/pay/onboarding/GooglePhoneGetter;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    if-eqz p3, :cond_1

    .line 2
    .line 3
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    if-ne p2, p3, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-nez p0, :cond_1

    .line 24
    .line 25
    :cond_0
    invoke-virtual {p1}, Lteam/opay/pay/onboarding/GooglePhoneGetter;->k()V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public static final l(Lteam/opay/pay/onboarding/GooglePhoneGetter;Landroid/app/PendingIntent;)Lkotlin/Unit;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    new-instance v0, Landroidx/activity/result/IntentSenderRequest$Builder;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v1, "getIntentSender(...)"

    .line 10
    .line 11
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, p1}, Landroidx/activity/result/IntentSenderRequest$Builder;-><init>(Landroid/content/IntentSender;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/activity/result/IntentSenderRequest$Builder;->a()Landroidx/activity/result/IntentSenderRequest;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object v0, p0, Lteam/opay/pay/onboarding/GooglePhoneGetter;->d:Landroidx/activity/result/ActivityResultLauncher;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroidx/activity/result/ActivityResultLauncher;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    .line 32
    .line 33
    const-string v0, "error_msg"

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {v0, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const/4 v0, 0x1

    .line 44
    new-array v0, v0, [Lkotlin/Pair;

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    aput-object p1, v0, v1

    .line 48
    .line 49
    const-string p1, "phone_hint_error"

    .line 50
    .line 51
    invoke-virtual {p0, p1, v0}, Lteam/opay/pay/onboarding/GooglePhoneGetter;->j(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lteam/opay/pay/onboarding/GooglePhoneGetter;->c:Lkotlin/jvm/functions/Function1;

    .line 55
    .line 56
    const/4 p1, 0x0

    .line 57
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    :cond_0
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 61
    .line 62
    return-object p0
.end method

.method public static final m(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final n(Lteam/opay/pay/onboarding/GooglePhoneGetter;Ljava/lang/Exception;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4
    .line 5
    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    move-object p1, v0

    .line 15
    :goto_0
    const-string v1, "error_msg"

    .line 16
    .line 17
    invoke-static {v1, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/4 v1, 0x1

    .line 22
    new-array v1, v1, [Lkotlin/Pair;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    aput-object p1, v1, v2

    .line 26
    .line 27
    const-string p1, "phone_hint_error"

    .line 28
    .line 29
    invoke-virtual {p0, p1, v1}, Lteam/opay/pay/onboarding/GooglePhoneGetter;->j(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lteam/opay/pay/onboarding/GooglePhoneGetter;->c:Lkotlin/jvm/functions/Function1;

    .line 33
    .line 34
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public static final p(Lteam/opay/pay/onboarding/GooglePhoneGetter;Landroidx/activity/result/ActivityResult;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, -0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-ne v1, v2, :cond_2

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    :try_start_0
    iget-object v1, p0, Lteam/opay/pay/onboarding/GooglePhoneGetter;->a:Landroidx/fragment/app/Fragment;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Lcom/google/android/gms/auth/api/identity/Identity;->getSignInClient(Landroid/app/Activity;)Lcom/google/android/gms/auth/api/identity/SignInClient;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {v1, p1}, Lcom/google/android/gms/auth/api/identity/SignInClient;->getPhoneNumberFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string v1, "getPhoneNumberFromIntent(...)"

    .line 38
    .line 39
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v1, "phone_hint_select"

    .line 43
    .line 44
    new-array v2, v0, [Lkotlin/Pair;

    .line 45
    .line 46
    invoke-virtual {p0, v1, v2}, Lteam/opay/pay/onboarding/GooglePhoneGetter;->j(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Loj2;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    const/16 v2, 0xa

    .line 58
    .line 59
    if-le v1, v2, :cond_1

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    sub-int/2addr v1, v2

    .line 66
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const-string v1, "substring(...)"

    .line 71
    .line 72
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catch_0
    move-exception p1

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    :goto_0
    iget-object v1, p0, Lteam/opay/pay/onboarding/GooglePhoneGetter;->c:Lkotlin/jvm/functions/Function1;

    .line 79
    .line 80
    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    goto :goto_2

    .line 84
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    .line 86
    .line 87
    const-string v1, "error_msg"

    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-static {v1, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    const/4 v1, 0x1

    .line 98
    new-array v1, v1, [Lkotlin/Pair;

    .line 99
    .line 100
    aput-object p1, v1, v0

    .line 101
    .line 102
    const-string p1, "phone_hint_error"

    .line 103
    .line 104
    invoke-virtual {p0, p1, v1}, Lteam/opay/pay/onboarding/GooglePhoneGetter;->j(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 105
    .line 106
    .line 107
    iget-object p0, p0, Lteam/opay/pay/onboarding/GooglePhoneGetter;->c:Lkotlin/jvm/functions/Function1;

    .line 108
    .line 109
    invoke-interface {p0, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_2
    const-string p1, "phone_hint_cancel"

    .line 114
    .line 115
    new-array v0, v0, [Lkotlin/Pair;

    .line 116
    .line 117
    invoke-virtual {p0, p1, v0}, Lteam/opay/pay/onboarding/GooglePhoneGetter;->j(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 118
    .line 119
    .line 120
    iget-object p0, p0, Lteam/opay/pay/onboarding/GooglePhoneGetter;->c:Lkotlin/jvm/functions/Function1;

    .line 121
    .line 122
    invoke-interface {p0, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    :goto_2
    return-void
.end method


# virtual methods
.method public final g(Landroid/widget/EditText;)V
    .locals 3
    .param p1    # Landroid/widget/EditText;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "editText"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lsr6;

    .line 7
    .line 8
    invoke-direct {v0, p1, p0}, Lsr6;-><init>(Landroid/widget/EditText;Lteam/opay/pay/onboarding/GooglePhoneGetter;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lpf5;->a(Landroid/widget/EditText;Lkotlin/jvm/functions/Function1;)Landroid/text/TextWatcher;

    .line 12
    .line 13
    .line 14
    new-instance v0, Ltr6;

    .line 15
    .line 16
    invoke-direct {v0, p1, p0}, Ltr6;-><init>(Landroid/widget/EditText;Lteam/opay/pay/onboarding/GooglePhoneGetter;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lteam/opay/pay/onboarding/GooglePhoneGetter;->a:Landroidx/fragment/app/Fragment;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    new-instance v2, Lteam/opay/pay/onboarding/GooglePhoneGetter$a;

    .line 33
    .line 34
    invoke-direct {v2, p1, v0}, Lteam/opay/pay/onboarding/GooglePhoneGetter$a;-><init>(Landroid/widget/EditText;Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroidx/lifecycle/Lifecycle;->a(Lzf8;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final varargs j(Ljava/lang/String;[Lkotlin/Pair;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    new-instance v1, Lkotlin/jvm/internal/SpreadBuilder;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v1, v2}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    .line 7
    .line 8
    .line 9
    const-string v2, "page"

    .line 10
    .line 11
    iget-object v3, p0, Lteam/opay/pay/onboarding/GooglePhoneGetter;->b:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v2, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p2}, Lkotlin/jvm/internal/SpreadBuilder;->b(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lkotlin/jvm/internal/SpreadBuilder;->c()I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    new-array p2, p2, [Lkotlin/Pair;

    .line 28
    .line 29
    invoke-virtual {v1, p2}, Lkotlin/jvm/internal/SpreadBuilder;->d([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    check-cast p2, [Lkotlin/Pair;

    .line 34
    .line 35
    invoke-virtual {v0, p1, p2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/GooglePhoneGetter;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const-string v0, "phone_hint_trigger"

    .line 12
    .line 13
    new-array v1, v1, [Lkotlin/Pair;

    .line 14
    .line 15
    invoke-virtual {p0, v0, v1}, Lteam/opay/pay/onboarding/GooglePhoneGetter;->j(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lteam/opay/pay/onboarding/GooglePhoneGetter;->a:Landroidx/fragment/app/Fragment;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-static {}, Lcom/google/android/gms/auth/api/identity/GetPhoneNumberHintIntentRequest;->builder()Lcom/google/android/gms/auth/api/identity/GetPhoneNumberHintIntentRequest$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/identity/GetPhoneNumberHintIntentRequest$Builder;->build()Lcom/google/android/gms/auth/api/identity/GetPhoneNumberHintIntentRequest;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v2, "build(...)"

    .line 35
    .line 36
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lcom/google/android/gms/auth/api/identity/Identity;->getSignInClient(Landroid/app/Activity;)Lcom/google/android/gms/auth/api/identity/SignInClient;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {v0, v1}, Lcom/google/android/gms/auth/api/identity/SignInClient;->getPhoneNumberHintIntent(Lcom/google/android/gms/auth/api/identity/GetPhoneNumberHintIntentRequest;)Lcom/google/android/gms/tasks/Task;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v1, Lvr6;

    .line 48
    .line 49
    invoke-direct {v1, p0}, Lvr6;-><init>(Lteam/opay/pay/onboarding/GooglePhoneGetter;)V

    .line 50
    .line 51
    .line 52
    new-instance v2, Lwr6;

    .line 53
    .line 54
    invoke-direct {v2, v1}, Lwr6;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    new-instance v1, Lxr6;

    .line 62
    .line 63
    invoke-direct {v1, p0}, Lxr6;-><init>(Lteam/opay/pay/onboarding/GooglePhoneGetter;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 67
    .line 68
    .line 69
    :cond_1
    return-void
.end method

.method public final o()V
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/GooglePhoneGetter;->a:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    new-instance v1, Landroidx/activity/result/contract/ActivityResultContracts$StartIntentSenderForResult;

    .line 4
    .line 5
    invoke-direct {v1}, Landroidx/activity/result/contract/ActivityResultContracts$StartIntentSenderForResult;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lur6;

    .line 9
    .line 10
    invoke-direct {v2, p0}, Lur6;-><init>(Lteam/opay/pay/onboarding/GooglePhoneGetter;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Lag;)Landroidx/activity/result/ActivityResultLauncher;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lteam/opay/pay/onboarding/GooglePhoneGetter;->d:Landroidx/activity/result/ActivityResultLauncher;

    .line 18
    .line 19
    return-void
.end method
