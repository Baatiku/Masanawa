.class public final Lteam/opay/sme/va/receive/staticAccount/largeTransfer/SelectAccountNumberDialog$Companion;
.super Ljava/lang/Object;
.source "SelectAccountNumberDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/sme/va/receive/staticAccount/largeTransfer/SelectAccountNumberDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J/\u0010\n\u001a\u00020\t2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0016\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0006j\u0008\u0012\u0004\u0012\u00020\u0004`\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lteam/opay/sme/va/receive/staticAccount/largeTransfer/SelectAccountNumberDialog$Companion;",
        "",
        "<init>",
        "()V",
        "Lteam/opay/business/transfer/flow/api/CategoryInfo;",
        "info",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "list",
        "Lteam/opay/sme/va/receive/staticAccount/largeTransfer/SelectAccountNumberDialog;",
        "a",
        "(Lteam/opay/business/transfer/flow/api/CategoryInfo;Ljava/util/ArrayList;)Lteam/opay/sme/va/receive/staticAccount/largeTransfer/SelectAccountNumberDialog;",
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
    invoke-direct {p0}, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/SelectAccountNumberDialog$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lteam/opay/business/transfer/flow/api/CategoryInfo;Ljava/util/ArrayList;)Lteam/opay/sme/va/receive/staticAccount/largeTransfer/SelectAccountNumberDialog;
    .locals 4
    .param p1    # Lteam/opay/business/transfer/flow/api/CategoryInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/transfer/flow/api/CategoryInfo;",
            "Ljava/util/ArrayList<",
            "Lteam/opay/business/transfer/flow/api/CategoryInfo;",
            ">;)",
            "Lteam/opay/sme/va/receive/staticAccount/largeTransfer/SelectAccountNumberDialog;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "list"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/SelectAccountNumberDialog;

    .line 7
    .line 8
    invoke-direct {v1}, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/SelectAccountNumberDialog;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v3, "selectedInfo"

    .line 17
    .line 18
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 25
    .line 26
    .line 27
    return-object v1
.end method
