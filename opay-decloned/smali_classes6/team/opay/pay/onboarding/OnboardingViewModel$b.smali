.class public final Lteam/opay/pay/onboarding/OnboardingViewModel$b;
.super Lcom/google/android/material/snackbar/Snackbar$Callback;
.source "OnboardingViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/onboarding/OnboardingViewModel;->b0(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J!\u0010\n\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00022\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "team/opay/pay/onboarding/OnboardingViewModel$b",
        "Lcom/google/android/material/snackbar/Snackbar$Callback;",
        "Lcom/google/android/material/snackbar/Snackbar;",
        "sb",
        "",
        "onShown",
        "(Lcom/google/android/material/snackbar/Snackbar;)V",
        "transientBottomBar",
        "",
        "event",
        "onDismissed",
        "(Lcom/google/android/material/snackbar/Snackbar;I)V",
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
.field public final synthetic a:Lteam/opay/pay/onboarding/OnboardingViewModel;


# direct methods
.method public constructor <init>(Lteam/opay/pay/onboarding/OnboardingViewModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/onboarding/OnboardingViewModel$b;->a:Lteam/opay/pay/onboarding/OnboardingViewModel;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/snackbar/Snackbar$Callback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDismissed(Lcom/google/android/material/snackbar/Snackbar;I)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lcom/google/android/material/snackbar/Snackbar$Callback;->onDismissed(Lcom/google/android/material/snackbar/Snackbar;I)V

    .line 3
    iget-object p1, p0, Lteam/opay/pay/onboarding/OnboardingViewModel$b;->a:Lteam/opay/pay/onboarding/OnboardingViewModel;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lteam/opay/pay/onboarding/OnboardingViewModel;->w(Lteam/opay/pay/onboarding/OnboardingViewModel;Lcom/google/android/material/snackbar/Snackbar;)V

    return-void
.end method

.method public bridge synthetic onDismissed(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/onboarding/OnboardingViewModel$b;->onDismissed(Lcom/google/android/material/snackbar/Snackbar;I)V

    return-void
.end method

.method public onShown(Lcom/google/android/material/snackbar/Snackbar;)V
    .locals 1

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/material/snackbar/Snackbar$Callback;->onShown(Lcom/google/android/material/snackbar/Snackbar;)V

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    sget v0, Lcom/google/android/material/R$id;->snackbar_action:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onShown(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p0, p1}, Lteam/opay/pay/onboarding/OnboardingViewModel$b;->onShown(Lcom/google/android/material/snackbar/Snackbar;)V

    return-void
.end method
