.class public Lteam/opay/pay/transfer/contact/TransferContactDao_Impl$b;
.super Landroidx/room/EntityDeleteOrUpdateAdapter;
.source "TransferContactDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/transfer/contact/TransferContactDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeleteOrUpdateAdapter<",
        "Lteam/opay/pay/transfer/contact/TransferContact;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/pay/transfer/contact/TransferContactDao_Impl;


# direct methods
.method public constructor <init>(Lteam/opay/pay/transfer/contact/TransferContactDao_Impl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/TransferContactDao_Impl$b;->a:Lteam/opay/pay/transfer/contact/TransferContactDao_Impl;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/room/EntityDeleteOrUpdateAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ld2d;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ld2d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p2, Lteam/opay/pay/transfer/contact/TransferContact;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/transfer/contact/TransferContactDao_Impl$b;->d(Ld2d;Lteam/opay/pay/transfer/contact/TransferContact;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-string v0, "DELETE FROM `TransferContact` WHERE `phone` = ?"

    .line 2
    .line 3
    return-object v0
.end method

.method public d(Ld2d;Lteam/opay/pay/transfer/contact/TransferContact;)V
    .locals 2
    .param p1    # Ld2d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/transfer/contact/TransferContact;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/TransferContact;->c()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/TransferContact;->c()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-interface {p1, v1, p2}, Ld2d;->m(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method
