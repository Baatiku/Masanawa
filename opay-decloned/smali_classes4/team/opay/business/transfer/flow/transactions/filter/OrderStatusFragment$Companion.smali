.class public final Lteam/opay/business/transfer/flow/transactions/filter/OrderStatusFragment$Companion;
.super Ljava/lang/Object;
.source "OrderStatusFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/business/transfer/flow/transactions/filter/OrderStatusFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\t\u001a\u00020\u00082\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lteam/opay/business/transfer/flow/transactions/filter/OrderStatusFragment$Companion;",
        "",
        "<init>",
        "()V",
        "Lteam/opay/business/transfer/flow/api/FilterInfo;",
        "info",
        "Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;",
        "filter",
        "Lteam/opay/business/transfer/flow/transactions/filter/OrderStatusFragment;",
        "a",
        "(Lteam/opay/business/transfer/flow/api/FilterInfo;Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;)Lteam/opay/business/transfer/flow/transactions/filter/OrderStatusFragment;",
        "business-transfer-flow_release"
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
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/transactions/filter/OrderStatusFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lteam/opay/business/transfer/flow/api/FilterInfo;Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;)Lteam/opay/business/transfer/flow/transactions/filter/OrderStatusFragment;
    .locals 3
    .param p1    # Lteam/opay/business/transfer/flow/api/FilterInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lteam/opay/business/transfer/flow/transactions/filter/OrderStatusFragment;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/business/transfer/flow/transactions/filter/OrderStatusFragment;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "key_info"

    .line 12
    .line 13
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 14
    .line 15
    .line 16
    const-string p1, "key_filter"

    .line 17
    .line 18
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method
