.class public final Lteam/opay/business/share/ui/ShareFragment$b;
.super Lteam/opay/business/share/utils/AdapterListener;
.source "ShareFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/share/ui/ShareFragment;->i1(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u0004\u00a8\u0006\n"
    }
    d2 = {
        "team/opay/business/share/ui/ShareFragment$b",
        "Lteam/opay/business/share/utils/AdapterListener;",
        "",
        "d",
        "()V",
        "",
        "path",
        "b",
        "(Ljava/lang/String;)V",
        "a",
        "business-share_release"
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
.field public final synthetic a:Lteam/opay/business/share/ui/ShareFragment;


# direct methods
.method public constructor <init>(Lteam/opay/business/share/ui/ShareFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/business/share/ui/ShareFragment$b;->a:Lteam/opay/business/share/ui/ShareFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Lteam/opay/business/share/utils/AdapterListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    invoke-super {p0}, Lteam/opay/business/share/utils/AdapterListener;->a()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/business/share/ui/ShareFragment$b;->a:Lteam/opay/business/share/ui/ShareFragment;

    .line 7
    .line 8
    invoke-static {v0}, Lteam/opay/business/share/ui/ShareFragment;->Y0(Lteam/opay/business/share/ui/ShareFragment;)Lteam/opay/business/share/ShareViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lteam/opay/business/share/ShareViewModel;->s()Landroidx/lifecycle/MutableLiveData;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lteam/opay/opb/common/base/EdgeSheetFragment;->getAppContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    sget v2, Lteam/opay/business/share/R$string;->share_something_went_wrong:I

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v1, v0}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "path"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lteam/opay/business/share/utils/AdapterListener;->b(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/business/share/ui/ShareFragment$b;->a:Lteam/opay/business/share/ui/ShareFragment;

    .line 12
    .line 13
    invoke-static {v0}, Lteam/opay/business/share/ui/ShareFragment;->Y0(Lteam/opay/business/share/ui/ShareFragment;)Lteam/opay/business/share/ShareViewModel;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lteam/opay/business/share/ShareViewModel;->s()Landroidx/lifecycle/MutableLiveData;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0, p1}, Lteam/opay/business/share/ui/ShareFragment;->a1(Lteam/opay/business/share/ui/ShareFragment;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    invoke-super {p0}, Lteam/opay/business/share/utils/AdapterListener;->d()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/business/share/ui/ShareFragment$b;->a:Lteam/opay/business/share/ui/ShareFragment;

    .line 7
    .line 8
    invoke-static {v0}, Lteam/opay/business/share/ui/ShareFragment;->Y0(Lteam/opay/business/share/ui/ShareFragment;)Lteam/opay/business/share/ShareViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lteam/opay/business/share/ShareViewModel;->s()Landroidx/lifecycle/MutableLiveData;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
