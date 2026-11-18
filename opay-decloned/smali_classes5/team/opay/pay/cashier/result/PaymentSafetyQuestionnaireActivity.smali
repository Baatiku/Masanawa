.class public final Lteam/opay/pay/cashier/result/PaymentSafetyQuestionnaireActivity;
.super Lteam/opay/pay/android/NoBindingActivity;
.source "PaymentSafetyQuestionnaireActivity.kt"

# interfaces
.implements Lda7;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/cashier/result/PaymentSafetyQuestionnaireActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00122\u00020\u00012\u00020\u0002:\u0001\u0013B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0019\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0014\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0019\u0010\u000c\u001a\u00020\u00072\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u0004R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0014"
    }
    d2 = {
        "Lteam/opay/pay/cashier/result/PaymentSafetyQuestionnaireActivity;",
        "Lteam/opay/pay/android/NoBindingActivity;",
        "Lda7;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onPostCreate",
        "(Landroid/os/Bundle;)V",
        "",
        "data",
        "onH5DataResult",
        "(Ljava/lang/String;)V",
        "B",
        "Lteam/opay/pay/cashier/result/PaymentSafetyQuestionnaire;",
        "c",
        "Lteam/opay/pay/cashier/result/PaymentSafetyQuestionnaire;",
        "d",
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
.field public static final d:Lteam/opay/pay/cashier/result/PaymentSafetyQuestionnaireActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public c:Lteam/opay/pay/cashier/result/PaymentSafetyQuestionnaire;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/cashier/result/PaymentSafetyQuestionnaireActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/cashier/result/PaymentSafetyQuestionnaireActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/cashier/result/PaymentSafetyQuestionnaireActivity;->d:Lteam/opay/pay/cashier/result/PaymentSafetyQuestionnaireActivity$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->layout_no_content:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/android/NoBindingActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/cashier/result/PaymentSafetyQuestionnaireActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/cashier/result/PaymentSafetyQuestionnaireActivity;->C(Lteam/opay/pay/cashier/result/PaymentSafetyQuestionnaireActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final C(Lteam/opay/pay/cashier/result/PaymentSafetyQuestionnaireActivity;)Lkotlin/Unit;
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


# virtual methods
.method public final B()V
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/pay/cashier/result/SafetyQuestionWebFoundationDialogFragment;->r:Lteam/opay/pay/cashier/result/SafetyQuestionWebFoundationDialogFragment$Companion;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/cashier/result/PaymentSafetyQuestionnaireActivity;->c:Lteam/opay/pay/cashier/result/PaymentSafetyQuestionnaire;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Lteam/opay/pay/cashier/result/PaymentSafetyQuestionnaire;->getJumpUrl()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-nez v1, :cond_1

    .line 14
    .line 15
    const-string v1, ""

    .line 16
    .line 17
    :cond_1
    invoke-virtual {v0, v1}, Lteam/opay/pay/cashier/result/SafetyQuestionWebFoundationDialogFragment$Companion;->a(Ljava/lang/String;)Lteam/opay/pay/cashier/result/SafetyQuestionWebFoundationDialogFragment;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Lggb;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lggb;-><init>(Lteam/opay/pay/cashier/result/PaymentSafetyQuestionnaireActivity;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lteam/opay/pay/cashier/result/SafetyQuestionWebFoundationDialogFragment;->T(Lkotlin/jvm/functions/Function0;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p0, v0}, Lteam/opay/pay/base/FragmentKt;->x(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/DialogFragment;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onH5DataResult(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string p1, ""

    .line 6
    .line 7
    :cond_0
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string p1, "closePage"

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 17
    .line 18
    .line 19
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
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "key_data"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lteam/opay/pay/cashier/result/PaymentSafetyQuestionnaire;

    .line 15
    .line 16
    iput-object p1, p0, Lteam/opay/pay/cashier/result/PaymentSafetyQuestionnaireActivity;->c:Lteam/opay/pay/cashier/result/PaymentSafetyQuestionnaire;

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/cashier/result/PaymentSafetyQuestionnaireActivity;->B()V

    .line 25
    .line 26
    .line 27
    new-instance p1, Lteam/opay/core/settings/NoClearStorage;

    .line 28
    .line 29
    invoke-static {}, Ljmf;->i()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-direct {p1, v0}, Lteam/opay/core/settings/NoClearStorage;-><init>(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lteam/opay/core/settings/NoClearStorage;->x0()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    add-int/lit8 v0, v0, 0x1

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Lteam/opay/core/settings/NoClearStorage;->g2(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lteam/opay/core/settings/NoClearStorage;->y0()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    add-int/lit8 v0, v0, 0x1

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lteam/opay/core/settings/NoClearStorage;->h2(I)V

    .line 52
    .line 53
    .line 54
    return-void
.end method
