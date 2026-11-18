.class public final Lteam/opay/pay/transfer/contact/view/dialog/ContactTransferDispatchFragment$Companion;
.super Ljava/lang/Object;
.source "ContactTransferDispatchFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/transfer/contact/view/dialog/ContactTransferDispatchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J7\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000e\u001a\u00020\u00088\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\u00088\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u000fR\u0014\u0010\u0011\u001a\u00020\u00088\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u000fR\u0014\u0010\u0012\u001a\u00020\u00088\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u000fR\u0014\u0010\u0013\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u000f\u00a8\u0006\u0014"
    }
    d2 = {
        "Lteam/opay/pay/transfer/contact/view/dialog/ContactTransferDispatchFragment$Companion;",
        "",
        "<init>",
        "()V",
        "Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;",
        "dispatchData",
        "",
        "isDispathExplicit",
        "",
        "fromService",
        "isNewAcUser",
        "Lteam/opay/pay/transfer/contact/view/dialog/ContactTransferDispatchFragment;",
        "a",
        "(Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;ZLjava/lang/String;Ljava/lang/Boolean;)Lteam/opay/pay/transfer/contact/view/dialog/ContactTransferDispatchFragment;",
        "DISPATCH_DATA",
        "Ljava/lang/String;",
        "KEY_IS_DISPATH_EXPLICIT",
        "KEY_FROM_SERVICE",
        "KEY_IS_NEW_USER",
        "TAG",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/transfer/contact/view/dialog/ContactTransferDispatchFragment$Companion;-><init>()V

    return-void
.end method

.method public static synthetic b(Lteam/opay/pay/transfer/contact/view/dialog/ContactTransferDispatchFragment$Companion;Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;ZLjava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)Lteam/opay/pay/transfer/contact/view/dialog/ContactTransferDispatchFragment;
    .locals 1

    .line 1
    and-int/lit8 p6, p5, 0x2

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    and-int/lit8 p6, p5, 0x4

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p6, :cond_1

    .line 10
    .line 11
    move-object p3, v0

    .line 12
    :cond_1
    and-int/lit8 p5, p5, 0x8

    .line 13
    .line 14
    if-eqz p5, :cond_2

    .line 15
    .line 16
    move-object p4, v0

    .line 17
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lteam/opay/pay/transfer/contact/view/dialog/ContactTransferDispatchFragment$Companion;->a(Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;ZLjava/lang/String;Ljava/lang/Boolean;)Lteam/opay/pay/transfer/contact/view/dialog/ContactTransferDispatchFragment;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method


# virtual methods
.method public final a(Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;ZLjava/lang/String;Ljava/lang/Boolean;)Lteam/opay/pay/transfer/contact/view/dialog/ContactTransferDispatchFragment;
    .locals 3
    .param p1    # Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "dispatchData"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/pay/transfer/contact/view/dialog/ContactTransferDispatchFragment;

    .line 7
    .line 8
    invoke-direct {v0}, Lteam/opay/pay/transfer/contact/view/dialog/ContactTransferDispatchFragment;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 14
    .line 15
    .line 16
    sget-object v2, Lteam/opay/core/android/DataDispatchRepository;->c:Lteam/opay/core/android/DataDispatchRepository$Companion;

    .line 17
    .line 18
    invoke-virtual {v2}, Lteam/opay/core/android/DataDispatchRepository$Companion;->a()Lteam/opay/core/android/DataDispatchRepository;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2, p1}, Lteam/opay/core/android/DataDispatchRepository;->f(Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;)V

    .line 23
    .line 24
    .line 25
    const-string p1, "key_is_dispath_explicit"

    .line 26
    .line 27
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 28
    .line 29
    .line 30
    if-eqz p3, :cond_0

    .line 31
    .line 32
    const-string p1, "key_from_service"

    .line 33
    .line 34
    invoke-virtual {v1, p1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    if-eqz p4, :cond_1

    .line 38
    .line 39
    const-string p1, "key_is_new_user"

    .line 40
    .line 41
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 49
    .line 50
    .line 51
    return-object v0
.end method
