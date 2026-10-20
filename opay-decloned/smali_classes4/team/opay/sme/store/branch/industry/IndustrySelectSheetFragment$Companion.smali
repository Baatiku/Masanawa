.class public final Lteam/opay/sme/store/branch/industry/IndustrySelectSheetFragment$Companion;
.super Ljava/lang/Object;
.source "IndustrySelectSheetFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/sme/store/branch/industry/IndustrySelectSheetFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\t\u001a\u00020\u00082\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\t\u0010\nR\u0014\u0010\u000c\u001a\u00020\u000b8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lteam/opay/sme/store/branch/industry/IndustrySelectSheetFragment$Companion;",
        "",
        "<init>",
        "()V",
        "Lteam/opay/sme/store/api/PublicConfigResponse;",
        "publicConfig",
        "Lteam/opay/sme/store/branch/industry/SelectedIndustryDto;",
        "selectedIndustry",
        "Lteam/opay/sme/store/branch/industry/IndustrySelectSheetFragment;",
        "a",
        "(Lteam/opay/sme/store/api/PublicConfigResponse;Lteam/opay/sme/store/branch/industry/SelectedIndustryDto;)Lteam/opay/sme/store/branch/industry/IndustrySelectSheetFragment;",
        "",
        "PARAMS_CONFIG",
        "Ljava/lang/String;",
        "SELECT_INDUSTRY",
        "business-sme-store_release"
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
    invoke-direct {p0}, Lteam/opay/sme/store/branch/industry/IndustrySelectSheetFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lteam/opay/sme/store/api/PublicConfigResponse;Lteam/opay/sme/store/branch/industry/SelectedIndustryDto;)Lteam/opay/sme/store/branch/industry/IndustrySelectSheetFragment;
    .locals 3
    .param p1    # Lteam/opay/sme/store/api/PublicConfigResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lteam/opay/sme/store/branch/industry/SelectedIndustryDto;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lteam/opay/sme/store/branch/industry/IndustrySelectSheetFragment;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/sme/store/branch/industry/IndustrySelectSheetFragment;-><init>()V

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
    const-string v2, "params_config"

    .line 12
    .line 13
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 14
    .line 15
    .line 16
    const-string p1, "select_industry"

    .line 17
    .line 18
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method
