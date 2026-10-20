.class public final Lteam/opay/pay/kyc/upgrade2/task/Kyc2ForgotIdSelectDialog$Companion;
.super Ljava/lang/Object;
.source "Kyc2ForgotIdSelectDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/kyc/upgrade2/task/Kyc2ForgotIdSelectDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J3\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u001c\u0008\u0002\u0010\t\u001a\u0016\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006j\n\u0012\u0004\u0012\u00020\u0007\u0018\u0001`\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u00020\u00048\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u00048\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lteam/opay/pay/kyc/upgrade2/task/Kyc2ForgotIdSelectDialog$Companion;",
        "",
        "<init>",
        "()V",
        "",
        "title",
        "Ljava/util/ArrayList;",
        "Lteam/opay/pay/kyc/upgrade2/task/ForgotIdItem;",
        "Lkotlin/collections/ArrayList;",
        "list",
        "Lteam/opay/pay/kyc/upgrade2/task/Kyc2ForgotIdSelectDialog;",
        "a",
        "(Ljava/lang/String;Ljava/util/ArrayList;)Lteam/opay/pay/kyc/upgrade2/task/Kyc2ForgotIdSelectDialog;",
        "KEY_TITLE",
        "Ljava/lang/String;",
        "KEY_LIST",
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
    invoke-direct {p0}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2ForgotIdSelectDialog$Companion;-><init>()V

    return-void
.end method

.method public static synthetic b(Lteam/opay/pay/kyc/upgrade2/task/Kyc2ForgotIdSelectDialog$Companion;Ljava/lang/String;Ljava/util/ArrayList;ILjava/lang/Object;)Lteam/opay/pay/kyc/upgrade2/task/Kyc2ForgotIdSelectDialog;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2ForgotIdSelectDialog$Companion;->a(Ljava/lang/String;Ljava/util/ArrayList;)Lteam/opay/pay/kyc/upgrade2/task/Kyc2ForgotIdSelectDialog;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/ArrayList;)Lteam/opay/pay/kyc/upgrade2/task/Kyc2ForgotIdSelectDialog;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lteam/opay/pay/kyc/upgrade2/task/ForgotIdItem;",
            ">;)",
            "Lteam/opay/pay/kyc/upgrade2/task/Kyc2ForgotIdSelectDialog;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "title"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2ForgotIdSelectDialog;

    .line 7
    .line 8
    invoke-direct {v0}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2ForgotIdSelectDialog;-><init>()V

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
    const-string v2, "key_title"

    .line 17
    .line 18
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string p1, "key_list"

    .line 22
    .line 23
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 27
    .line 28
    .line 29
    return-object v0
.end method
