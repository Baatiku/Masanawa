.class public final Lteam/opay/pay/settings/profile/ProfileNicknameFragment$b;
.super Lteam/opay/core/android/views/SafeDelayedTextWatcher;
.source "ProfileNicknameFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/settings/profile/ProfileNicknameFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "team/opay/pay/settings/profile/ProfileNicknameFragment$b",
        "Lteam/opay/core/android/views/SafeDelayedTextWatcher;",
        "Landroid/text/Editable;",
        "s",
        "",
        "b",
        "(Landroid/text/Editable;)V",
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
.field public final synthetic e:Lteam/opay/pay/settings/profile/ProfileNicknameFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/settings/profile/ProfileNicknameFragment;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lteam/opay/pay/settings/profile/ProfileNicknameFragment$b;->e:Lteam/opay/pay/settings/profile/ProfileNicknameFragment;

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
    .locals 5

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/profile/ProfileNicknameFragment$b;->e:Lteam/opay/pay/settings/profile/ProfileNicknameFragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lgh6;

    .line 8
    .line 9
    iget-object v0, v0, Lgh6;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v4, v2

    .line 24
    :goto_0
    if-eqz v4, :cond_2

    .line 25
    .line 26
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-nez v4, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/4 v4, 0x0

    .line 34
    goto :goto_2

    .line 35
    :cond_2
    :goto_1
    const/4 v4, 0x1

    .line 36
    :goto_2
    xor-int/2addr v4, v3

    .line 37
    invoke-static {v0, v4}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 38
    .line 39
    .line 40
    :cond_3
    iget-object v0, p0, Lteam/opay/pay/settings/profile/ProfileNicknameFragment$b;->e:Lteam/opay/pay/settings/profile/ProfileNicknameFragment;

    .line 41
    .line 42
    invoke-virtual {v0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lgh6;

    .line 47
    .line 48
    iget-object v0, v0, Lgh6;->g:Lcom/google/android/material/button/MaterialButton;

    .line 49
    .line 50
    if-eqz v0, :cond_7

    .line 51
    .line 52
    if-eqz p1, :cond_4

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    :cond_4
    if-eqz v2, :cond_5

    .line 59
    .line 60
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-nez p1, :cond_6

    .line 65
    .line 66
    :cond_5
    const/4 v1, 0x1

    .line 67
    :cond_6
    xor-int/lit8 p1, v1, 0x1

    .line 68
    .line 69
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 70
    .line 71
    .line 72
    :cond_7
    return-void
.end method
