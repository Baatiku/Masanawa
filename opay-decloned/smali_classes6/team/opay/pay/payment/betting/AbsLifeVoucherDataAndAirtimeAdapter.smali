.class public abstract Lteam/opay/pay/payment/betting/AbsLifeVoucherDataAndAirtimeAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "AbsLifeVoucherDataAndAirtimeAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lteam/opay/pay/api/BundleInfo;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\t\u0008&\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0019\u0010\t\u001a\u00020\u00082\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002H\u0007\u00a2\u0006\u0004\u0008\t\u0010\nR$\u0010\u0010\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\n\u00a8\u0006\u0011"
    }
    d2 = {
        "Lteam/opay/pay/payment/betting/AbsLifeVoucherDataAndAirtimeAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lteam/opay/pay/api/BundleInfo;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "",
        "id",
        "<init>",
        "(I)V",
        "",
        "l",
        "(Lteam/opay/pay/api/BundleInfo;)V",
        "a",
        "Lteam/opay/pay/api/BundleInfo;",
        "k",
        "()Lteam/opay/pay/api/BundleInfo;",
        "setCheckAmount",
        "checkAmount",
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
.field public a:Lteam/opay/pay/api/BundleInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final k()Lteam/opay/pay/api/BundleInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/AbsLifeVoucherDataAndAirtimeAdapter;->a:Lteam/opay/pay/api/BundleInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l(Lteam/opay/pay/api/BundleInfo;)V
    .locals 0
    .param p1    # Lteam/opay/pay/api/BundleInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/payment/betting/AbsLifeVoucherDataAndAirtimeAdapter;->a:Lteam/opay/pay/api/BundleInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
